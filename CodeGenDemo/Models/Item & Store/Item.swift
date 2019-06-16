//
//  Item.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import UIKit

// FIXME: sourcery - make it AutoEquatable
enum Item {
    case ship(Ship)
    case person(Person)
    case film(Film)
}

// FIXME: sourcery – generate the SwiftGen image constant from the item case name
extension Item {
    var image: UIImage {
        switch self {
        case .ship:
            return UIImage(named: "items/ship")!
        case .person:
            return UIImage(named: "items/person")! // FIXME: crash here. Solve using swiftgen
        case .film:
            return UIImage(named: "items/movie")! // FIXME: crash here. Solve using swiftgen
        }
    }
}

// FIXME: sourcery – generate this enum, looping on all cases
extension Item: CustomStringConvertible {
    var description: String {
        switch self {
        case .ship(let ship):
            return ship.description
        case .person(let person):
            return person.description
        case .film(let film):
            return film.description
        }
    }
}

// FIXME: sourcery, use custom annotation to identify the name property
extension Item {
    var name: String {
        switch self {
        case .ship(let ship):
            return ship.name
        case .person(let person):
            return person.name
        case .film(let film):
            return film.title
        }
    }
}


// FIXME: sourcery – generate that Encodable implementation
extension Item: Encodable {
    enum CodingKeys: CodingKey {
        case type, item
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .ship(let ship):
            try container.encode("ship", forKey: .type)
            try container.encode(ship, forKey: .item)
        case .person(let person):
            try container.encode("person", forKey: .type)
            try container.encode(person, forKey: .item)
        case .film(let film):
            try container.encode("film", forKey: .type)
            try container.encode(film, forKey: .item)
        }
    }
}
