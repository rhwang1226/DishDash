//
//  Food.swift
//
//
//  Created by Satvik  Kapoor  on 03/02/24.
//

import Fluent
import Vapor

final class FoodItem: Model, Content {
    static let schema = "food_items"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "price")
    var price: Double
    
    @Field(key: "address")
    var address: String
    
    // Assuming you're storing the image URL or path
    @OptionalField(key: "photo_url")
    var photoURL: String?
    
    init() { }

    init(id: UUID? = nil, name: String, price: Double, address: String, photoURL: String? = nil) {
        self.id = id
        self.name = name
        self.price = price
        self.address = address
        self.photoURL = photoURL
    }
}

