//
//  CustomTabBar.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 12.09.2023.
//

import SwiftUI

struct CustomTabBar: View {
    var body: some View {
    
        VStack {
            Spacer()
            ZStack() {
                Capsule()
                    .frame(width: 380, height: 80)
                    .foregroundColor(Color(cgColor: dividerColor))
                HStack {
                    Spacer()
                    Button {
                        //
                    } label: {
                        ZStack {
                            Capsule()
                                .frame(width: 100, height: 60)
                                .foregroundColor(Color(cgColor: bgColor))
                                .opacity(0.7)
                            Text("Home")
                                .foregroundColor(Color(cgColor: fontColor))
                        }
                        .shadow(radius: 2)
                    }
                    
                    
                    Spacer()
                    Button {
                        //
                    } label: {
                        ZStack {
                            Capsule()
                                .frame(width: 100, height: 60)
                                .foregroundColor(Color(cgColor: bgColor))
                                .opacity(0.7)
                            Text("Home")
                                .foregroundColor(Color(cgColor: fontColor))
                        }
                        .shadow(radius: 2)
                    }
                    Spacer()
                    Button {
                        //
                    } label: {
                        ZStack {
                            Capsule()
                                .frame(width: 100, height: 60)
                                .foregroundColor(Color(cgColor: bgColor))
                                .opacity(0.7)
                            Text("Home")
                                .foregroundColor(Color(cgColor: fontColor))
                        }
                        .shadow(radius: 2)
                    }
                    Spacer()
                }
                
            }
        }
        .shadow(radius: 10)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
