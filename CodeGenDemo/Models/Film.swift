//
//  Film.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// FIXME: [Stage 7] rename and see Sourcery's magic
// FIXME: [Stage 7] sourcery custom encodable
struct Film: Model, Equatable, Encodable {
    let id: Int
    let episodeID: Int
    let title: String
    let openingCrawl: String
    let director: String
    let producer: String
    let releaseDate: String
    let characters: [ID<Person>]
    let planets: [Int] // FIXME: [Stage 6] – Change to [ID<Planet>] 
    let starships: [ID<Ship>]
}

extension Film: CustomStringConvertible {
    var description: String {
        return L10n.Film.description(title, episodeID, releaseDate)
    }
}
