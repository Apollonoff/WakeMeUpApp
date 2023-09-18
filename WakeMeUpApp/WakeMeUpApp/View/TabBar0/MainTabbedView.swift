//
//  MainTabbedView.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 10.09.2023.
//

import SwiftUI

struct MainTabbedView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                Questions()
                    .tag(0)
                
                Questions()
                    .tag(1)
                
                Music()
                    .tag(2)
            }

            ZStack{
                HStack{
                    ForEach((TabbedItems.allCases), id: \.self){ item in
                        Button{
                            selectedTab = item.rawValue
                        } label: {
                            CustomTabItem(imageName: item.imageName, title: item.title, isActive: (selectedTab == item.rawValue))
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
    }
    
}

extension MainTabbedView {
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

struct MainTabbedView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabbedView()
    }
}
