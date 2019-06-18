//
//  Person.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// FIXME: [Stage 7] sourcery custom encodable
struct Person: Model, AutoEquatable, Encodable {
    // sourcery: skipEquality, skipField
    let id: Int
    let name: String
    let height: Int?
    let mass: Float?
    let hairColor: String
    let skinColor: String
    let eyeColor: String
    let homeworld: Int // FIXME: [Stage 6] – Change to ID<Planet>
    // sourcery:begin:skipEquality
    let films: [ID<Film>]
    let starships: [ID<Ship>]
    // sourcery:end
}

extension Person: CustomStringConvertible {
    var description: String {
        return L10n.Person.description(name, height ?? 0, mass ?? 0, films.count)
    }
}
