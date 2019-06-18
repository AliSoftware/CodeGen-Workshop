//
//  Planet.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// FIXME: [Stage 7] sourcery custom encodable
struct Planet: Model, AutoEquatable, Encodable {
    // sourcery: skipEquality, skipField
    let id: Int
    let name: String
    let rotationPeriod: Int?
    let orbitalPeriod: Int?
    let diameter: Int?
    let climate: String
    let gravity: String
    let terrain: String
    let surfaceWater: Float?
    let population: Float?
    // sourcery:begin:skipEquality
    let residents: [ID<Person>]
    let films: [ID<Film>]
    // sourcery:end
}

extension Planet: CustomStringConvertible {
    var description: String {
        let residentNames = residents.isEmpty
            ? L10n.Planet.Description.noResident
            : residents.map({ id in id.displayName ?? "?" }).joined(separator: ", ")

        return L10n.Planet.description(name, films.count, residentNames)
    }
}
