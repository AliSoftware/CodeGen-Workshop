//
//  Film.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// sourcery: nameProperty=title
struct Movie: Model, AutoEquatable, AutoEncodable {
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
}

extension Movie: CustomStringConvertible {
    var description: String {
        return L10n.Movie.description(title, episodeID, releaseDate)
    }
}
