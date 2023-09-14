//
//  ContentView.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 31.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $tabSelection) {
                HomeView()
                    .tag(0)
                    .toolbar(.hidden, for: .tabBar)
                Text("Questions")
                    .tag(1)
                toolbar(.hidden, for: .tabBar)
                Text("Music")
                    .tag(2)
                    .toolbar(.hidden, for: .tabBar)
            }
            .toolbar(.hidden, for: .tabBar)
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}

extension ContentView {
    func TabBar() -> some View {
        VStack {
            Spacer()
            ZStack {
                Capsule()
                    .frame(width: 380, height: 80)
                    .foregroundColor(Color(cgColor: dividerColor))
                HStack {
                    ForEach(TabbedItems.allCases, id: \.self) { item in
                        Spacer()
                        Button {
                            tabSelection = item.rawValue
                        } label: {
                            ZStack {
                                Capsule()
                                    .frame(width: 100, height: 60)
                                    .foregroundColor(Color(cgColor: bgColor))
                                    .opacity(0.7)
                                Image(systemName: item.iconName)
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(Color(cgColor: fontColor))
                                
                            }
                            .shadow(radius: 2)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}
