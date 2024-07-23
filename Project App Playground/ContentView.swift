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
                SearchPageView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                FavouritesView()
                    .tabItem {
                        Label("Favourites", systemImage: "star")
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
