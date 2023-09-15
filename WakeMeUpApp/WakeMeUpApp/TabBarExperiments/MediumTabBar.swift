//
//  MediumTabBar.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 14.09.2023.
//

import SwiftUI

enum TabbedItems1: Int, CaseIterable{
    case home = 0
    case favorite
    case chat
    case profile
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorite"
        case .chat:
            return "Chat"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "home-icon"
        case .favorite:
            return "favorite-icon"
        case .chat:
            return "chat-icon"
        case .profile:
            return "profile-icon"
        }
    }
}

struct MediumTabBar: View {
    @State var selectedTab = 0
    var body: some View {
        ZStack(alignment: .bottom){
                    TabView(selection: $selectedTab) {
                        HomeView()
//                            .toolbar(.hidden)
//                        Text("Home")
                            .tag(0)
                            .toolbar(.hidden, for: .tabBar)

//                        FavoriteView()
                        HomeView()
                            .tag(1)
                            .toolbar(.hidden, for: .tabBar)
                        

//                        ChatView()
                        HomeView()
                            .tag(2)
                            .toolbar(.hidden, for: .tabBar)

//                        ProfileView()
                        HomeView()
                            .tag(3)
                            .toolbar(.hidden, for: .tabBar)
                    }

                    ZStack{
                        HStack{
                            ForEach((TabbedItems1.allCases), id: \.self){ item in
                                Button{
                                    selectedTab = item.rawValue
                                } label: {
                                    CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                                }
                            }
                        }
                        .padding(6)
                    }
                    .frame(height: 70)
                    .background(.purple.opacity(0.2))
                    .cornerRadius(35)
                    .padding(.horizontal, 26)
                }
        .toolbar(.hidden, for: .automatic)
    }
}

struct MediumTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MediumTabBar()
    }
}

extension MediumTabBar{
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
        HStack(spacing: 10){
            Spacer()
            Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .black : .gray)
                .frame(width: 20, height: 20)
            if isActive{
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(isActive ? .black : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity : 60, height: 60)
        .background(isActive ? .purple.opacity(0.4) : .clear)
        .cornerRadius(30)
    }
}
