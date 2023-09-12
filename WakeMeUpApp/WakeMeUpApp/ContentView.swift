//
//  ContentView.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 31.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            HomeView()
                .tag(1)
            Text("Tab content 2")
                .tag(2)
            Text("Tab content 3")
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
