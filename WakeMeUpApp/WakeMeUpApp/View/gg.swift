//
//  gg.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 14.09.2023.
//

import SwiftUI

struct gg: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag(0)
                .tabItem {
                    Text("Home")
                }
                .toolbarBackground(.hidden, for: .tabBar)
            Text("jdjd")
                .tag(1)
            
        }
    }
}

struct gg_Previews: PreviewProvider {
    static var previews: some View {
        gg()
    }
}
