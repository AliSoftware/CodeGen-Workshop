// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit

enum Item: AutoEquatable {
    case film(Film)
    case person(Person)
    case ship(Ship)
}

extension Item {
    var image: UIImage {
        switch self {
        case .film:
            return Asset.Items.film.image
        case .person:
            return Asset.Items.person.image
        case .ship:
            return Asset.Items.ship.image
        }
    }
}

extension Item: CustomStringConvertible {
    var description: String {
        switch self {
        case .film(let film):
            return film.description
        case .person(let person):
            return person.description
        case .ship(let ship):
            return ship.description
        }
    }
}

extension Item {
    var name: String {
        switch self {
        case .film(let film):
            return film.title
        case .person(let person):
            return person.name
        case .ship(let ship):
            return ship.name
        }
    }
}

extension Item: Encodable {
    enum CodingKeys: CodingKey {
        case type, item
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .film(let film):
            try container.encode("film", forKey: .type)
            try container.encode(film, forKey: .item)
        case .person(let person):
            try container.encode("person", forKey: .type)
            try container.encode(person, forKey: .item)
        case .ship(let ship):
            try container.encode("ship", forKey: .type)
            try container.encode(ship, forKey: .item)
        }
    }
}
