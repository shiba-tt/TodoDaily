import SwiftUI

// 共通レイアウトです。
struct BaseScreenContainer: View {
    // 選択タブを保持します。
    @State private var selectedTab: TabType = .home
    
    // 設定表示/非表示を保持します。
    @State private var isSettingsOpen: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                AppHeaderView(
                    onSettingsTapped: {
                        isSettingsOpen = true
                    }
                )
                ZStack {
                    selectedTab.contentView
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                AppFooterView(selectedTab: $selectedTab)
            }
            SettingsView(isOpen: $isSettingsOpen)
        }
    }
}
