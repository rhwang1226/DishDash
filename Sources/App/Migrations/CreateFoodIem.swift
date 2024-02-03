//
//  File.swift
//  
//
//  Created by Satvik  Kapoor  on 03/02/24.
//

import Fluent

struct CreateFoodItem: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("food_items")
            .id()
            .field("name", .string, .required)
            .field("price", .double, .required)
            .field("address", .string, .required)
            .field("photo_url", .string)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("food_items").delete()
    }
}

