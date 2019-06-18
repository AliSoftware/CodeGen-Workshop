//
//  Film.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// FIXME: [Stage 7] sourcery custom encodable
// sourcery: nameProperty=title
struct Movie: Model, AutoEquatable, Encodable {
    // sourcery: skipEquality, skipField
    let id: Int
    let episodeID: Int
    let title: String
    // sourcery:skipField
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
