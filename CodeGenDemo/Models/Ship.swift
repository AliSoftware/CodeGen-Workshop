//
//  ShipStore.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// FIXME: [Stage 7] sourcery custom encodable
struct Ship: Model, AutoEquatable, Encodable {
    // sourcery:skipEquality
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
    let films: [ID<Film>]
    // sourcery:end
}

extension Ship: CustomStringConvertible {
    var description: String {
        return L10n.Ship.description(name, model, crew ?? 0, passengers ?? 0, length ?? 0)
    }
}
