import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        NavigationSplitView {
        } detail: {
            Text("Select an item")
        }
    }
}

#Preview {
    HomeView()
}
