//
//  ContentView.swift
//  TodoDaily
//
//  Created by Tatsuya Shiba on 2025/05/26.
//

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
