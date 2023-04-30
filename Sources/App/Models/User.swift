//
//  File.swift
//  
//
//  Created by Andrei Mirica on 25.04.2023.
//

import Vapor
import Fluent

final class User: Model, Content {
    init() {
        
    }
    
    static let schema = "users"
    
    @ID
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "email")
    var email: String
    
    @Field(key: "level")
    var level: String
    
    @Field(key: "password")
    var password: String
    
    @Field(key: "lastLessonIndex")
    var lastLessonIndex: Int
    
    init(id: UUID? = nil, name: String, email: String, level: String, password: String, lastLessonIndex: Int) {
        self.id = id
        self.name = name
        self.email = email
        self.level = level
        self.password = password
        self.lastLessonIndex = lastLessonIndex
    }
}

extension User {
    struct CreateUser: Content, Decodable {
        var name: String
        var email: String
        var level: String
        var password: String
        var lastLessonIndex: Int
    }
}
