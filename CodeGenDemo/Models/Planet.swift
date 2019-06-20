//
//  Planet.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

class Planet: Model, AutoEquatable, AutoEncodable, AutoInit {
    // sourcery: skipEquality, skipField, skipEncodable
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
    let films: [ID<Movie>]
    // sourcery:end
    
    // sourcery:inline:auto:Planet.AutoInit
    init(id: Int, name: String, rotationPeriod: Int?, orbitalPeriod: Int?, diameter: Int?, climate: String, gravity: String, terrain: String, surfaceWater: Float?, population: Float?, residents: [ID<Person>], films: [ID<Movie>]) {
        self.id = id
        self.name = name
        self.rotationPeriod = rotationPeriod
        self.orbitalPeriod = orbitalPeriod
        self.diameter = diameter
        self.climate = climate
        self.gravity = gravity
        self.terrain = terrain
        self.surfaceWater = surfaceWater
        self.population = population
        self.residents = residents
        self.films = films
    }
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
