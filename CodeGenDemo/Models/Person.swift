//
//  Person.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

class Person: Model, AutoEquatable, AutoEncodable, AutoInit {
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

    // sourcery:inline:auto:Person.AutoInit
    init(id: Int, name: String, height: Int?, mass: Float?, hairColor: String, skinColor: String, eyeColor: String, homeworld: ID<Planet>, films: [ID<Movie>], starships: [ID<Ship>]) {
        self.id = id
        self.name = name
        self.height = height
        self.mass = mass
        self.hairColor = hairColor
        self.skinColor = skinColor
        self.eyeColor = eyeColor
        self.homeworld = homeworld
        self.films = films
        self.starships = starships
    }
    // sourcery:end
}

extension Person: CustomStringConvertible {
    var description: String {
        return L10n.Person.description(name, height ?? 0, mass ?? 0, films.count)
    }
}
