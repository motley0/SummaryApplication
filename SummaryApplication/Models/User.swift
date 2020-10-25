//
//  User.swift
//  SummaryApplication
//
//  Created by Dmitry Shcherbakov on 23.10.2020.
//

struct User {
    let userName: String
    let password: String
}

extension User {
    static func getUser() -> User {
        User(userName: "User", password: "Password")
    }
}
