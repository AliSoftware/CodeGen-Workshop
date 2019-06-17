//
//  Planet.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

// FIXME: [Stage 2] swiftgen – Add all Planets from yaml and generate ItemStore+Planets.swft
// FIXME: [Stage 6] sourcery – make Planet conform to Model: See it be added everywhere automatically thanks to Sourcery
// FIXME: [Stage 7] sourcery custom encodable
struct Planet: Model, Equatable, Encodable {
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
    let residents: [ID<Person>]
    let films: [ID<Film>]
}

extension Planet: CustomStringConvertible {
    var description: String {
        // FIXME: swiftgen strings
        let residentNames = residents.isEmpty
            ? NSLocalizedString("planet.description.noResident", comment: "")
            : residents.map({ id in id.displayName ?? "?" }).joined(separator: ", ")

        // FIXME: swiftgen strings
        let key = NSLocalizedString("planet.description", comment: "")
        return String(format: key, name, films.count, residentNames)
    }
}
