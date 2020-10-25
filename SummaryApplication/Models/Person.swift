//
//  Person.swift
//  SummaryApplication
//
//  Created by Dmitry Shcherbakov on 24.10.2020.
//

struct Person {
    let fullName: String
    let yearsOld: Int
    let hobbies: [String]
    let signOfZodiac: String
    let favouriteColour: String
    let favoriteActor: String
    let favoriteActress: String
    let favoriteMovie: String
    let favoriteMusicGroup: String
    let futureProfession: String
    let favoriteСonsole: String
    let pager: String
    let email: String
}


extension Person {
    static func getPerson() -> Person {
        Person(fullName: "Дмитрий Щербаков",
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
               email: "0halfbeak0@gmail.com")
    }
}
