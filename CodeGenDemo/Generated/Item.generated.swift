// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit

enum Item: AutoEquatable {
    case movie(Movie)
    case person(Person)
    case planet(Planet)
    case ship(Ship)
}

extension Item {
    var image: UIImage {
        switch self {
        case .movie:
            return Asset.Items.movie.image
        case .person:
            return Asset.Items.person.image
        case .planet:
            return Asset.Items.planet.image
        case .ship:
            return Asset.Items.ship.image
        }
    }
}

extension Item: CustomStringConvertible {
    var description: String {
        switch self {
        case .movie(let movie):
            return movie.description
        case .person(let person):
            return person.description
        case .planet(let planet):
            return planet.description
        case .ship(let ship):
            return ship.description
        }
    }
}

extension Item {
    var name: String {
        switch self {
        case .movie(let movie):
            return movie.title
        case .person(let person):
            return person.name
        case .planet(let planet):
            return planet.name
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
        case .movie(let movie):
            try container.encode("movie", forKey: .type)
            try container.encode(movie, forKey: .item)
        case .person(let person):
            try container.encode("person", forKey: .type)
            try container.encode(person, forKey: .item)
        case .planet(let planet):
            try container.encode("planet", forKey: .type)
            try container.encode(planet, forKey: .item)
        case .ship(let ship):
            try container.encode("ship", forKey: .type)
            try container.encode(ship, forKey: .item)
        }
    }
}

extension ID {
    func item() -> Item? {
        switch self {
        case let id as ID<Movie>:
            return ItemStore.shared[id].map { .movie($0) }
        case let id as ID<Person>:
            return ItemStore.shared[id].map { .person($0) }
        case let id as ID<Planet>:
            return ItemStore.shared[id].map { .planet($0) }
        case let id as ID<Ship>:
            return ItemStore.shared[id].map { .ship($0) }
        default:
            return nil
        }
    }
}
