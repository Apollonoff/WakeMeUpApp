//
//  TabOne.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 08.09.2023.
//

import SwiftUI


struct TabOne: View {
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
struct TabOne_Previews: PreviewProvider {
    static var previews: some View {
        TabOne()
    }
}
