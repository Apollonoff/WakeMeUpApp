//
//  QuizModel.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 08.09.2023.
//

import Foundation

struct Quiz : Codable, Identifiable {
    let category : String?
    let id : String?
    let correctAnswer : String?
    let incorrectAnswers : [String]?
    let question : String?
    let tags : [String]?
    let type : String?
    let difficulty : String?
    let regions : [String]?
    let isNiche : Bool?

    enum CodingKeys: String, CodingKey {

        case category = "category"
        case id = "id"
        case correctAnswer = "correctAnswer"
        case incorrectAnswers = "incorrectAnswers"
        case question = "question"
        case tags = "tags"
        case type = "type"
        case difficulty = "difficulty"
        case regions = "regions"
        case isNiche = "isNiche"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        category = try values.decodeIfPresent(String.self, forKey: .category)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        correctAnswer = try values.decodeIfPresent(String.self, forKey: .correctAnswer)
        incorrectAnswers = try values.decodeIfPresent([String].self, forKey: .incorrectAnswers)
        question = try values.decodeIfPresent(String.self, forKey: .question)
        tags = try values.decodeIfPresent([String].self, forKey: .tags)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        difficulty = try values.decodeIfPresent(String.self, forKey: .difficulty)
        regions = try values.decodeIfPresent([String].self, forKey: .regions)
        isNiche = try values.decodeIfPresent(Bool.self, forKey: .isNiche)
    }

}


