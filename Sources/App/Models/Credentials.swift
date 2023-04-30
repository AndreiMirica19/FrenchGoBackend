//
//  File.swift
//  
//
//  Created by Andrei Mirica on 25.04.2023.
//

import Vapor
import Fluent

struct Credentials: Content {
    var email: String
    var password: String
}
