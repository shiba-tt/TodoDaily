import SwiftUI
import SwiftData

struct SettingsView: View {
    // 色のテーマを保持します。
    @AppStorage("theme") var theme: String = "system"
    
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
                SwiftUI.List {
                    // ここに設定を追加する。
                    Section(header: Text("表示モード")) {
                        Picker("モード", selection: $theme) {
                            Text("システム").tag("system")
                            Text("ライト").tag("light")
                            Text("ダーク").tag("dark")
                        }
                        .pickerStyle(.segmented)
                    }
                }
                Spacer()
            }
            .padding(.leading, maxWidth / 4)
            .offset(x: isOpen ? 0 : maxWidth)
            .animation(.easeInOut(duration: 0.3), value: isOpen)
        }
    }
}
