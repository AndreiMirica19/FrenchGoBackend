//
//  File.swift
//  
//
//  Created by Andrei Mirica on 28.04.2023.
//

import Foundation
import Fluent
import Vapor

struct Course: Content {
    var courseName: String
    var languageLevel: String
    var lessons: [Lesson]
}

struct Lesson: Content {
    var title: String
    var text: String
    var quiz: Quiz
}
