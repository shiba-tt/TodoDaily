import SwiftUI
import SwiftData

struct SettingsDrawerView: View {
    // 表示/非表示を保持します。
    @Binding
    var isOpen: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("設定")
                    .font(.headline)
                Spacer()
                Button(action: {
                    withAnimation {
                        isOpen = false
                    }
                }) {
                    Image(systemName: "xmark")
                        .font(.headline)
                        .padding()
                }
            }
            Divider()
            // 設定項目をここに
            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(Color(.systemBackground)))
        .shadow(radius: 10)
    }
}
