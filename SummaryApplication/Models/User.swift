//
//  User.swift
//  SummaryApplication
//
//  Created by Dmitry Shcherbakov on 23.10.2020.
//

struct User {
    let userName: String
    let password: String
    let person: Person
}

extension User {
    static func getUser() -> User {
        User(userName: "User",
             password: "Password",
             person: Person(fullName: "Дмитрий Щербаков",
                            yearsOld: 27,
                            hobbies: ["велосипед", "игры", "кино"],
                            signOfZodiac: "скорпион",
                            favouriteColour: "белый",
                            favoriteActor: "Шварц",
                            favoriteActress: "Энистон",
                            favoriteMovie: "интерстеллар",
                            favoriteMusicGroup: "Wardruna",
                            futureProfession: "IOS Developer",
                            favoriteСonsole: "PS5",
                            pager: "отсутствует",
                            email: "0halfbeak0@gmail.com"))
    }
}
