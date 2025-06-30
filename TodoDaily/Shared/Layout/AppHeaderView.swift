import SwiftUI

// ヘッダー
struct AppHeaderView: View {
    // 設定ボタン押下時のアクションを受け取れるようにする
    var onSettingsTapped: (() -> Void)?
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("TodoDaily")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Spacer()
                Button(action: {
                    onSettingsTapped?()
                }) {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.primary)
                }
                .accessibilityLabel("設定")
            }
            .padding(.horizontal)
            .frame(height: 56)
            .background(Color(.systemBackground))
            .overlay(
                Divider(), alignment: .bottom
            )
        }
    }
}
