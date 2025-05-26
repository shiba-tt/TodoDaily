import Foundation
import SwiftData

@Model
final class HabitRecord {
    @Attribute(.unique) var id: UUID
    var taskId: UUID  // Taskへの参照（ID型運用、必要ならリレーションも可）
    var date: Date
    var isCompleted: Bool

    init(
        id: UUID = UUID(),
        taskId: UUID,
        date: Date,
        isCompleted: Bool
    ) {
        self.id = id
        self.taskId = taskId
        self.date = date
        self.isCompleted = isCompleted
    }
}
