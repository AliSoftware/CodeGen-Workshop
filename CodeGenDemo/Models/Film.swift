//
//  Film.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// sourcery: nameProperty=title
struct Movie: Model, AutoEquatable, AutoEncodable, AutoInit {
    // sourcery: skipEquality, skipField, skipEncodable
    let id: Int
    let episodeID: Int
    let title: String
    // sourcery:skipField, skipEncodable
    let openingCrawl: String
    let director: String
    let producer: String
    let releaseDate: String
    // sourcery:begin:skipEquality
    let characters: [ID<Person>]
    // sourcery:skipField
    let planets: [ID<Planet>] 
    let starships: [ID<Ship>]
    // sourcery:end
    
    // sourcery:inline:auto:Movie.AutoInit
    init(id: Int, episodeID: Int, title: String, openingCrawl: String, director: String, producer: String, releaseDate: String, characters: [ID<Person>], planets: [ID<Planet>], starships: [ID<Ship>]) {
        self.id = id
        self.episodeID = episodeID
        self.title = title
        self.openingCrawl = openingCrawl
        self.director = director
        self.producer = producer
        self.releaseDate = releaseDate
        self.characters = characters
        self.planets = planets
        self.starships = starships
    }
    // sourcery:end
}

extension Movie: CustomStringConvertible {
    var description: String {
        return L10n.Movie.description(title, episodeID, releaseDate)
    }
}
