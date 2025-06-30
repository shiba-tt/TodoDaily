import SwiftUI

// タブ状態・遷移判定などのルーティング
enum TabType: Int, CaseIterable {
    case home, habitAnalytics
    
    var title: String {
        switch self {
        case .home: return "ホーム"
        case .habitAnalytics: return "習慣分析"
        }
    }
    
    var iconName: String {
        switch self {
        case .home: return "house.fill"
        case .habitAnalytics: return "chart.bar"
        }
    }
    
    @ViewBuilder
    var contentView: some View {
        switch self {
        case .home: HomeView()
        case .habitAnalytics: HabitAnalyticsView()
        }
    }
}
