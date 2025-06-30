import SwiftUI
import SwiftData

struct HomeView: View {
    // データ保存ができるようにmodelContextを保持します。
    @Environment(\.modelContext)
    private var modelContext
    
    // 全てのタスクを保持します。
    @Query(sort: \Task.dueDate, order: .forward)
    private var allTasks: [Task]
    
    // 今日の通常タスクを保持します。
    private var normalTasks: [Task] {
        allTasks.filter {
            $0.type == "normal"
            && Calendar.current.isDateInToday($0.dueDate ?? Date())
        }
    }
    
    // 今日の習慣タスクを保持します。
    private var habitTasks: [Task] {
        allTasks.filter {
            $0.type == "habit"
            && Calendar.current.isDateInToday($0.dueDate ?? Date())
        }
    }

    var body: some View {
        // 画面遷移のためのコンテナ
        NavigationStack {
            //
            ZStack(alignment: .bottomTrailing) {
                // 習慣タスクと通常タスクのリスト
                SwiftUI.List {
                    if !habitTasks.isEmpty {
                        Section(header: Text("習慣タスク")) {
                            ForEach(habitTasks) { task in
                                TaskRow(task: task)
                            }
                        }
                    }
                    if !normalTasks.isEmpty {
                        Section(header: Text("通常タスク")) {
                            ForEach(normalTasks) { task in
                                TaskRow(task: task)
                            }
                        }
                    }
                }
                .listStyle(.insetGrouped)

                Button(action: {
                    // タスク追加画面表示処理（仮）
                }) {
                    Image(systemName: "plus")
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .padding()
                        .background(Circle().fill(Color.blue))
                        .shadow(radius: 4)
                }
                .padding()
            }
        }
    }
}

// タスク1行単位のビュー
struct TaskRow: View {
    @Bindable var task: Task

    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(task.isCompleted ? .green : .gray)
            Text(task.title)
                .strikethrough(task.isCompleted)
                .foregroundColor(task.isCompleted ? .gray : .primary)
        }
        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
            Button {
                task.isCompleted.toggle()
                try? task.modelContext?.save()
            } label: {
                Label("完了", systemImage: "checkmark")
            }
            .tint(.green)
        }
    }
}

#Preview {
    HomeView()
}
