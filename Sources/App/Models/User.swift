//
//  User.swift
//  
//
//  Created by Satvik  Kapoor  on 03/02/24.
//

import Fluent
import Vapor

final class UserProfile: Model, Content {
    static let schema = "user_profiles"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "first_name")
    var firstName: String
    
    @Field(key: "last_name")
    var lastName: String
    
    @Field(key: "tartan_id")
    var tartanID: String
    
    @Field(key: "dob")
    var dob: Date
    
    @Field(key: "gender")
    var gender: String
    
    init() { }

    init(id: UUID? = nil, firstName: String, lastName: String, tartanID: String, dob: Date, gender: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.tartanID = tartanID
        self.dob = dob
        self.gender = gender
    }
}

