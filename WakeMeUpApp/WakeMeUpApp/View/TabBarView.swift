//
//  TabBarView.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 15.09.2023.
//

import SwiftUI

struct TabBarView: View {
    @State private var tabSelection = 0
    var body: some View {
        TabView(selection: $tabSelection) {
            HomeView()
                .tag(0)
                .tabItem {
                    VStack {
                        Image(systemName: TabbedItems.home.iconName)
                        Text("Home")
                    }
                }
                .toolbarBackground(Color(cgColor: tabBarColor), for: .tabBar)
            Text("Questions")
                .tag(1)
                .tabItem {
                    VStack {
                        Image(systemName: TabbedItems.questions.iconName)
                        Text("Questions")
                    }
                }
                .toolbarBackground(Color(cgColor: tabBarColor), for: .tabBar)
            Text("Music")
                .tag(2)
                .tabItem {
                    VStack {
                        Image(systemName: TabbedItems.music.iconName)
                        Text("Music")
                    }
                }
                .toolbarBackground(Color(cgColor: tabBarColor), for: .tabBar)
        }
        .accentColor(Color(cgColor: dividerColor))
        .font(.title)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
