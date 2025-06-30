import SwiftUI

// ヘッダー、フッターを含む共通レイアウトです。
struct BaseScreenContainer: View {
    @State
    private var selectedTab: TabType = .home
    
    var body: some View {
        VStack(spacing: 0) {
            AppHeaderView()
            ZStack {
                selectedTab.contentView
            }
            AppFooterView()
        }
    }
}
