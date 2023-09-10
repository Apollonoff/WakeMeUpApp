//
//  ContentView.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 31.08.2023.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        TabView {
            TabOne().tabItem {
                Image(systemName: "house")
                Text("Main Menu")
            }
            .toolbarBackground(

                    // 1
                Color.init(cgColor: tabBarColor),
                    // 2
                    for: .tabBar)
            
            Text("Hello")
                .tabItem {
                    Text("Hello")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
