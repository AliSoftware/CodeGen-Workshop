//
//  Film.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// FIXME: [Stage 6] rename and see Sourcery's magic
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
    let planets: [ID<Planet>]
    let starships: [ID<Ship>]
}

extension Film: CustomStringConvertible {
    var description: String {
        // FIXME: swiftgen strings
        let key = NSLocalizedString("film.description", comment: "")
        return String(format: key, title, episodeID, releaseDate)
    }
}
