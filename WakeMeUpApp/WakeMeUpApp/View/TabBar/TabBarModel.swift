//
//  TabBarModel.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 13.09.2023.
//

import Foundation

enum TabbedItems: Int,  CaseIterable {
    case home = 0
    case questions
    case music
    
    var iconName: String {
        switch self {
        case .home:
            return "house"
        case .questions:
            return "questionmark.folder"
        case .music:
            return "music.quarternote.3"
        }
    }
}
