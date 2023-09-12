//
//  HomeView.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 10.09.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(cgColor: bgColor).ignoresSafeArea()
            ScrollView {
                MainMenuCell()
                MainMenuCell()
                MainMenuCell()
            }
//            CustomTabBar()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
