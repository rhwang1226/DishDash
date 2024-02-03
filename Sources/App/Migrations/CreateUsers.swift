//
//  CreateUsers.swift
//
//
//  Created by Satvik  Kapoor  on 03/02/24.
//

import Fluent

struct CreateUsers: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("user_profiles")
            .id()
            .field("first_name", .string, .required)
            .field("last_name", .string, .required)
            .field("tartan_id", .string, .required)
            .field("dob", .date, .required)
            .field("gender", .string, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("user_profiles").delete()
    }
}

