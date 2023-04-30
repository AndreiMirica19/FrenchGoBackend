//
//  File.swift
//  
//
//  Created by Andrei Mirica on 25.04.2023.
//

import Vapor
import Fluent

struct Quiz: Content {
    var questions: [Question]
}

struct Question: Content {
    var questionText: String
    var questionAswers: [String]
    var rightAnswerIndex: Int
}
