//
//  Item.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import UIKit

// FIXME: [Stage 4] sourcery – generate that Encodable implementation
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
