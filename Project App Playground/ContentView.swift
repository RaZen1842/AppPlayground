//
//  ContentView.swift
//  Project App Playground
//
//  Created by Shreyas Veturi on 21/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                HomePageView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                TwitterFeedPageView()
                    .tabItem {
                        Label("News", systemImage: "newspaper")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
