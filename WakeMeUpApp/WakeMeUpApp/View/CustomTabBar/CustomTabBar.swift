//
//  CustomTabBar.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 11.09.2023.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(height: 80)
                .foregroundColor(Color(bgColor))
                .shadow(radius: 2)
            HStack {
                ForEach((TabbedItems.allCases), id: \.self){ item in
                    Button{
                        selectedTab = item.rawValue
                    } label: {
                        CustomTabItem(imageName: item.imageName, title: item.title, isActive: (selectedTab == item.rawValue))
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

extension CustomTabBar {
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View {
        HStack(spacing: 10){
                 Spacer()
                 Image(systemName: imageName)
                     .resizable()
                     .renderingMode(.template)
                     .foregroundColor(isActive ? .black : .gray)
                     .frame(width: 25, height: 25)
                 if isActive{
                     Text(title)
                         .font(.system(size: 16))
                         .foregroundColor(isActive ? .black : .gray)
                 }
            Spacer()
             }
                .frame(width: isActive ? .infinity : 60, height: 60)
             .background(isActive ? .purple.opacity(0.4) : .clear)
             .cornerRadius(30)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(1))
            .previewLayout(.sizeThatFits)
            .padding(.vertical)
    }
}
