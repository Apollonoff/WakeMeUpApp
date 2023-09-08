//
//  QuizModel.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 08.09.2023.
//

import Foundation


struct QuizModel: Codable {
    var id: String
    var category: String
    var tags: [String]
    var difficulty: String
    var regions: [String]
    var isNiche: Bool
    var question: Question
    var correctAnswer: String
    var incorrectAnswers: [String]
    var type: String
}

//MARK: Question
struct Question: Codable {
    var text: String
}
