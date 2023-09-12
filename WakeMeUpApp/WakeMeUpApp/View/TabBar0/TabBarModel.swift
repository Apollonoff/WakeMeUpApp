//
//  TabBarModel.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 10.09.2023.
//

import Foundation

enum TabbedItems: Int, CaseIterable {
    case home = 0
    case questions
    case music
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .questions:
            return "Questions"
        case .music:
            return "Music"
        }
    }
    
    var imageName: String {
        switch self {
        case.home:
            return "house"
        case .questions:
            return "questionmark.square"
        case .music:
            return "music.quarternote.3"
        }
    }
}

