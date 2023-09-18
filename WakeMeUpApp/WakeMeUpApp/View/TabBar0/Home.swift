//
//  Home.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 10.09.2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
//            Color(cgColor: bgColor).ignoresSafeArea()
            ScrollView {
                MainMenuCell()
                MainMenuCell()
                MainMenuCell()
                MainMenuCell()
            }
        }

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
