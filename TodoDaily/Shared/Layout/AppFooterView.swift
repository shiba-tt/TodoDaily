import SwiftUI

struct AppFooterView: View {
    // 選択中のタブを保持します。
    @Binding var selectedTab: TabType
    
    var body: some View {
        HStack {
            ForEach(TabType.allCases, id: \.self) {
                tab in Button(action: { selectedTab = tab }) {
                    VStack {
                        Image(systemName: tab.iconName)
                        Text(tab.title)
                            .font(.caption2)
                    }
                    .foregroundColor(selectedTab == tab ? .accentColor : .secondary)
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.vertical, 8)
        .background(Color(.systemBackground))
        .overlay(Divider(), alignment: .top)
    }
}

