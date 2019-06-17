//
//  Person.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// FIXME: sourcery custom encodable
struct Person: Model, Equatable, Encodable {
    let id: Int
    let name: String
    let height: Int?
    let mass: Float?
    let hairColor: String
    let skinColor: String
    let eyeColor: String
    let homeworld: ID<Planet>
    let films: [ID<Film>]
    let starships: [ID<Ship>]
}

extension Person: CustomStringConvertible {
    var description: String {
        // FIXME: swiftgen strings
        let key = NSLocalizedString("person.description", comment: "")
        return String(format: key, name, height ?? 0, mass ?? 0, films.count)
    }
}
