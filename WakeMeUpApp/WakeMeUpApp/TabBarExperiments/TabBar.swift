//
//  TabBar.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 13.09.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
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
//                            selectedTab == item.rawValue
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

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
