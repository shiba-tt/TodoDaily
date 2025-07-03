import SwiftUI
import SwiftData

struct SettingsView: View {
    // 表示/非表示を保持します。
    @Binding var isOpen: Bool
    
    // iPhoneの幅を保持します。
    private let maxWidth: CGFloat = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            // isOpenで背景が透明な黒になるようにする
            Color.black
                .edgesIgnoringSafeArea(.all)
                .opacity(isOpen ? 0.7 : 0)
                .onTapGesture {
                    // isOpenの変化にアニメーションをつけます
                    withAnimation(.easeIn(duration: 0.3)) {
                        isOpen.toggle()
                    }
                }
            ZStack {
                // ここに設定を追加する。
                SwiftUI.List {
                    Text("Settings")
                    Text("Settings")
                    Text("Settings")
                }
                // 設定のフッター
                VStack {
                    Spacer()
                    Text("Hello, World!")
                }
                .foregroundStyle(.secondary)
                .padding()
            }
            .padding(.leading, maxWidth / 4)
            .offset(x: isOpen ? 0 : maxWidth)
            .animation(.easeInOut(duration: 0.3), value: isOpen)
        }
    }
}
