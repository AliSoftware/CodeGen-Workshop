//
//  Person.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

struct Person: Model, AutoEquatable, AutoEncodable {
    // sourcery: skipEquality, skipField, skipEncodable
    let id: Int
    let name: String
    let height: Int?
    let mass: Float?
    let hairColor: String
    let skinColor: String
    let eyeColor: String
    let homeworld: ID<Planet>
    // sourcery:begin:skipEquality
    let films: [ID<Movie>]
    let starships: [ID<Ship>]
    // sourcery:end
}

extension Person: CustomStringConvertible {
    var description: String {
        return L10n.Person.description(name, height ?? 0, mass ?? 0, films.count)
    }
}
