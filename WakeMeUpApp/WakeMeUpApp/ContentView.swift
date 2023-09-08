//
//  ContentView.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 31.08.2023.
//

import SwiftUI
//rgb(5, 59, 80)
fileprivate let bgColor: CGColor = CGColor(red: 5/255, green: 59/255, blue: 80/255, alpha: 1)

//let coloredNavAppearance = UINavigationBarAppearance()

struct ContentView: View {    
    var body: some View {
        NavigationView {
            ZStack {
                Color(cgColor: bgColor).ignoresSafeArea()
                ScrollView {
                    MainMenuCell()
                    MainMenuCell()
                    MainMenuCell()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
