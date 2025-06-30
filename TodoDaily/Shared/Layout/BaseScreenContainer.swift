import SwiftUI

// ヘッダー、フッターを含む共通レイアウトです。
struct BaseScreenContainer: View {
    // 選択タブを保持します。
    @State
    private var selectedTab: TabType = .home
    
    // 設定Drawer表示/非表示を保持します。
    @State
    private var isSettingsPresented: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                AppHeaderView(
                    onSettingsTapped: {
                        isSettingsPresented = true
                    }
                )
                ZStack {
                    selectedTab.contentView
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                AppFooterView(selectedTab: $selectedTab)
            }
            
            // 設定Drawerを表示
            if isSettingsPresented {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            isSettingsPresented = false
                        }
                    }
                HStack {
                    Spacer()
                    SettingsDrawerView(isOpen: $isSettingsPresented)
                        .frame(width: 300)
                        .transition(.move(edge: .trailing))
                        .zIndex(1)
                }
                .animation(.easeInOut, value: isSettingsPresented)
            }
        }
    }
}
