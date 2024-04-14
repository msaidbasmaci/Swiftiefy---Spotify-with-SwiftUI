//
//  User.swift
//  Swiftiefy
//
//  Created by Muhammed Said BASMACI on 4.04.2024.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Int
    let weight: Double
    
    static var mock: User {
        User(
            id: 444,
            firstName: "Said",
            lastName: "Basmaci",
            age: 22,
            email: "muhammedbsmcm@gmail.com",
            phone: "",
            username: "",
            password: "",
            image: Constants.randomImage,
            height: 185,
            weight: 77
        )
    }
}
