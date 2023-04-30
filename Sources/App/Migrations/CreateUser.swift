//
//  File.swift
//  
//
//  Created by Andrei Mirica on 25.04.2023.
//

import Fluent
import Vapor

struct CreateUser: AsyncMigration {
    var name: String { "CreateUser" }
    
    func prepare(on database: Database) async throws {
        try await database.schema("users")
            .id()
            .field("name", .string, .required)
            .field("email", .string, .required)
            .field("level", .string, .required)
            .field("lastLessonIndex", .int, .required)
            .field("password", .string, .required)
            .unique(on: "email")
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema("users").delete()
    }
}
