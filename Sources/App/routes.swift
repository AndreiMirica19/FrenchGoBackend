import Fluent
import Vapor
import PostgresNIO


extension PostgresError {
    
    func getErrorMessage() -> String {
        switch self.code {
        case "23505":
            return "Already used email/phone"
        default:
            return "unexpected error"
        }
    }
}

func routes(_ app: Application) throws {
    app.get { req async throws in
        try await req.view.render("index", ["title": "Hello Vapor!"])
    }

    
    app.post("register") { req -> EventLoopFuture<ApiResponse> in
        let create = try req.content.decode(User.CreateUser.self)
        return User.query(on: req.db)
            .filter(\.$email == create.email)
            .first()
            .flatMap { existingUser in
                let user = User(name: create.name, email: create.email, level: create.level, password: create.password, lastLessonIndex: create.lastLessonIndex)
                return user.save(on: req.db).map {
                    return ApiResponse(statusCode: 201, message: "User created")
                }
            }.flatMapError { error in
                if let error = error as? Abort {
                    return req.eventLoop.makeSucceededFuture(ApiResponse(statusCode: 400, message: error.reason))
                } else {
                    if let error = error as? PostgresError {
                        return req.eventLoop.makeSucceededFuture(ApiResponse(statusCode: 400, message: error.getErrorMessage()))
                    }
                    
                    if let error = error as? PSQLError {
                        print(error.code)
                    }
                    return req.eventLoop.makeSucceededFuture(ApiResponse(statusCode: 500, message: "Unexpected error occurred"))
                }
            }
    }
    
    
    app.post("login") { req -> EventLoopFuture<Response> in
        let credentials = try req.content.decode(Credentials.self)
        
        return User.query(on: req.db)
            .filter(\.$email == credentials.email)
            .filter(\.$password == credentials.password)
            .first()
            .flatMap { user -> EventLoopFuture<Response> in
                if let user = user {
                    let response = Response(
                        status: .ok,
                        version: HTTPVersion(major: 1, minor: 1),
                        headers: HTTPHeaders([("Content-Type", "application/json")])
                    )
                    do {
                        try response.content.encode(user)
                        return req.eventLoop.makeSucceededFuture(response)
                    } catch {
                        let apiResponse = ApiResponse(statusCode: 500, message: "Failed to encode user details")
                        return req.eventLoop.makeFailedFuture(Abort(.internalServerError, reason: apiResponse.message))
                    }
                } else {
                    let apiResponse = ApiResponse(statusCode: 404, message: "User not found")
                    let response = Response(
                        status: .notFound,
                        version: HTTPVersion(major: 1, minor: 1),
                        headers: HTTPHeaders([("Content-Type", "application/json")])
                    )
                    do {
                        try response.content.encode(apiResponse)
                        return req.eventLoop.makeSucceededFuture(response)
                    } catch {
                        return req.eventLoop.makeFailedFuture(Abort(.internalServerError, reason: "Failed to encode API response"))
                    }
                }
            }
            .flatMapError { error in
                if let error = error as? PostgresError {
                    let apiResponse = ApiResponse(statusCode: 400, message: error.getErrorMessage())
                    let response = Response(
                        status: .badRequest,
                        version: HTTPVersion(major: 1, minor: 1),
                        headers: HTTPHeaders([("Content-Type", "application/json")])
                    )
                    do {
                        try response.content.encode(apiResponse)
                        return req.eventLoop.makeSucceededFuture(response)
                    } catch {
                        return req.eventLoop.makeFailedFuture(Abort(.internalServerError, reason: "Failed to encode API response"))
                    }
                } else {
                    let apiResponse = ApiResponse(statusCode: 500, message: "Unexpected error occurred")
                    let response = Response(
                        status: .internalServerError,
                        version: HTTPVersion(major: 1, minor: 1),
                        headers: HTTPHeaders([("Content-Type", "application/json")])
                    )
                    do {
                        try response.content.encode(apiResponse)
                        return req.eventLoop.makeSucceededFuture(response)
                    } catch {
                        return req.eventLoop.makeFailedFuture(Abort(.internalServerError, reason: "Failed to encode API response"))
                    }
                }
                
            }
    }
    
    app.put("incrementLesson") { req -> EventLoopFuture<User> in
        guard let id = req.query[String.self, at: "id"],
              let userUuid = UUID(uuidString: id)
        else {
            throw Abort(.badRequest)
        }

        return User.find(userUuid, on: req.db)
            .unwrap(or: Abort(.notFound))
            .flatMap { user in
                user.lastLessonIndex = user.lastLessonIndex + 1
                return user.save(on: req.db).transform(to: user)
            }
    }

    app.put("userLevel") { req -> EventLoopFuture<User> in
        guard let id = req.query[String.self, at: "id"],
              let userUuid = UUID(uuidString: id), let level = req.query[String.self, at: "level"]
        else {
            throw Abort(.badRequest)
        }


        return User.find(userUuid, on: req.db)
            .unwrap(or: Abort(.notFound))
            .flatMap { user in
                user.level = level
                return user.save(on: req.db).transform(to: user)
            }
    }
    
    app.get("userDetails") { req -> EventLoopFuture<User> in
        guard let id = req.query[String.self, at: "id"],
              let userUuid = UUID(uuidString: id)
        else {
            throw Abort(.badRequest)
        }
        
        return User.find(userUuid, on: req.db)
            .unwrap(or: Abort(.notFound))
            .flatMap { user in
                return req.eventLoop.makeSucceededFuture(user)
            }
    }
    
    app.get("initialQuiz") { req -> EventLoopFuture<Quiz> in
        let helper = Helper()
        return req.eventLoop.makeSucceededFuture(helper.initalQuiz)
    }
    
    app.get("course") { req -> EventLoopFuture<Course> in
        
        guard let difficulty = req.query[String.self, at: "difficulty"] else {
            throw Abort(.badRequest)
        }
        
        let helper = Helper()
        
        let difficultyEnumValue = CourseDifficulty(rawValue: difficulty)
        
        switch difficultyEnumValue {
        case .beginner:
            return req.eventLoop.makeSucceededFuture(helper.beginnerCourse())
        case .intermediate:
            return req.eventLoop.makeSucceededFuture(helper.intermediateCourse())
        case .advance:
            return req.eventLoop.makeSucceededFuture(helper.advanceLessons())
        default:
            throw Abort(.notFound)
        }
        
    }
}
