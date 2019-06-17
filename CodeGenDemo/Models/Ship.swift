//
//  ShipStore.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// FIXME: [Stage 7] sourcery custom encodable
struct Ship: Model, Equatable, Encodable {
    let id: Int
    let name: String
    let model: String
    let manufacturer: String
    let starshipClass: String

    let costInCredits: String
    let length: Float?
    let crew: Int?
    let passengers: Int?

    let pilots: [ID<Person>]
    let films: [ID<Film>]
}

extension Ship: CustomStringConvertible {
    var description: String {
        // FIXME: [Stage 1] swiftgen strings
        let key = NSLocalizedString("ship.description", comment: "")
        return String(format: key, name, model, crew ?? 0, passengers ?? 0, length ?? 0.0)
    }
}
