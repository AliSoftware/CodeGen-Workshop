//
//  ShipStore.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

class Ship: Model, AutoEquatable, AutoEncodable, AutoInit {
    // sourcery: skipEquality, skipField, skipEncodable
    let id: Int
    let name: String
    let model: String
    let manufacturer: String
    let starshipClass: String

    let costInCredits: String
    let length: Float?
    let crew: Int?
    let passengers: Int?

    // sourcery:begin:skipEquality
    let pilots: [ID<Person>]
    let films: [ID<Movie>]
    // sourcery:end

    // sourcery:inline:auto:Ship.AutoInit
    init(id: Int, name: String, model: String, manufacturer: String, starshipClass: String, costInCredits: String, length: Float?, crew: Int?, passengers: Int?, pilots: [ID<Person>], films: [ID<Movie>]) {
        self.id = id
        self.name = name
        self.model = model
        self.manufacturer = manufacturer
        self.starshipClass = starshipClass
        self.costInCredits = costInCredits
        self.length = length
        self.crew = crew
        self.passengers = passengers
        self.pilots = pilots
        self.films = films
    }
    // sourcery:end
}

extension Ship: CustomStringConvertible {
    var description: String {
        return L10n.Ship.description(name, model, crew ?? 0, passengers ?? 0, length ?? 0)
    }
}
