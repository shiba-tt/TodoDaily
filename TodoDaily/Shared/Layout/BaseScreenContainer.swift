import SwiftUI

// 共通レイアウトです。
struct BaseScreenContainer: View {
    // 色のテーマを保持します。
    @AppStorage("theme") var theme: String = "system"
    
    // 選択タブを保持します。
    @State private var selectedTab: TabType = .home
    
    // 設定サイドメニュー表示/非表示を保持します。
    @State private var isSettingsOpen: Bool = false
    
    var colorSchemeBinding: Binding<ColorScheme?> {
        Binding<ColorScheme?>(
            get: {
                switch theme {
                case "light": return .light
                case "dark":  return .dark
                default:      return nil
                }
            },
            set: {
                if let newValue = $0 {
                    theme = newValue == .dark ? "dark" : "light"
                } else {
                    theme = "system"
                }
            }
        )
    }

    var body: some View {
        // 通常の画面UIと設定サイドメニューを重ねて表示します。
        ZStack {
            // 通常の画面UI(ヘッダー、メインコンテンツ、フッター)
            VStack(spacing: 0) {
                // ヘッダー
                AppHeaderView(
                    // 設定ボタン押下時のアクションを検知します。
                    onSettingsTapped: {
                        isSettingsOpen.toggle()
                    }
                )
                // メインコンテンツ
                ZStack {
                    selectedTab
                        .contentView
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                // フッター
                AppFooterView(selectedTab: $selectedTab)
            }
            // 設定サイドメニュー
            SettingsView(isOpen: $isSettingsOpen)
        }
        .preferredColorScheme(
            theme == "light" ? .light :
                theme == "dark" ? .dark : nil
        )
    }
}
