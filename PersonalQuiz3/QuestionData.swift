//
//  QuestionData.swift
//  PersonalQuiz3
//
//  Created by student20 on 3/13/19.
//  Copyright © 2019 student20. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐇", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing with the people."
        case .cat:
            return " Mischievous, yet mild-tempered,"
        case .rabbit:
            return " You love everything that's soft. "
        case .turtle:
            return "You are wise beyond your years."
        
    
        }
    }
}
























