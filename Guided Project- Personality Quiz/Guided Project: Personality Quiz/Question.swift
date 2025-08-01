//
//  Question.swift
//  Guided Project: Personality Quiz
//
//  Created by Student on 01/08/25.
//

import Foundation
struct Question {
    var text :String
    var type:ResponseType
    var answers: [Answer]
    
}

enum ResponseType{
    case single,multiple,ranged
}
struct Answer {
    var text:String
    var type:AnimalType
}
enum AnimalType: Character {
    case lion = "🦁",cat = "🐱",rabbit = "🐰",turtle = "🐢"
    
    var defination:String{
        switch self {
        case .lion:
            return "You are incredible"
        case .cat:
            return "Mischievous"
            
        case .rabbit:
            return "you love everything thats soft"
        case .turtle:
            return "you are wise beyond"
        }
    }
}

