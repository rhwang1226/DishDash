//
//  UserController.swift
//  
//
//  Created by Satvik  Kapoor  on 03/02/24.
//

import Vapor

struct UserController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let userRoutes = routes.grouped("userProfile")
        userRoutes.post("createProfile", use: createProfile)
        userRoutes.get(use: index) // This is the new GET route
    }

    // Existing POST route handler for creating a user profile
    func createProfile(req: Request) throws -> EventLoopFuture<UserProfile> {
        let userProfile = try req.content.decode(UserProfile.self)
        return userProfile.save(on: req.db).map { userProfile }
    }

    // New GET route handler to retrieve all user profiles
    func index(req: Request) throws -> EventLoopFuture<[UserProfile]> {
        return UserProfile.query(on: req.db).all()
    }
    
    //food creation and deletion
struct FoodItemController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let foodItemRoutes = routes.grouped("foodItems")
        foodItemRoutes.post("create", use: createFoodItem)
        foodItemRoutes.get(use: getAllFoodItems) // Retrieves all food items
        foodItemRoutes.get(":foodItemID", use: getFoodItem) // Retrieves a specific food item by ID
        foodItemRoutes.delete("delete", ":foodItemID", use: deleteFoodItem)
    }

    // Handler for creating a food item
    func createFoodItem(req: Request) throws -> EventLoopFuture<FoodItem> {
        let foodItem = try req.content.decode(FoodItem.self)
        return foodItem.save(on: req.db).map { foodItem }
    }

    // Handler for retrieving all food items
    func getAllFoodItems(req: Request) throws -> EventLoopFuture<[FoodItem]> {
        return FoodItem.query(on: req.db).all()
    }

    // Handler for retrieving a specific food item by ID
    func getFoodItem(req: Request) throws -> EventLoopFuture<FoodItem> {
        guard let foodItemId = req.parameters.get("foodItemID", as: UUID.self) else {
            throw Abort(.badRequest, reason: "Invalid food item ID")
        }
        return FoodItem.find(foodItemId, on: req.db)
            .unwrap(or: Abort(.notFound))
    }

    // Handler for deleting a food item
    func deleteFoodItem(req: Request) throws -> EventLoopFuture<HTTPStatus> {
        FoodItem.find(req.parameters.get("foodItemID"), on: req.db)
            .unwrap(or: Abort(.notFound))
            .flatMap { foodItem in
                foodItem.delete(on: req.db)
            }.transform(to: .ok)
    }
}

}

