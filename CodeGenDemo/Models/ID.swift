//
//  ID.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

// An ID references an ID just by its ID. It can be resolved to an Item from which we can get a displayName

struct ID<T: Model>: Equatable {
    let id: Int
}

extension ID {
    // FIXME: [Stage 4] sourcery – Generate this switch
    func item() -> Item? {
        switch self {
        case let id as ID<Ship>:
            return ItemStore.shared[id].map { .ship($0) }
        case let id as ID<Person>:
            return ItemStore.shared[id].map { .person($0) }
        case let id as ID<Film>:
            return ItemStore.shared[id].map { .film($0) }
        default:
            return nil
        }
    }
}



extension ID {
    var displayName: String? {
        return item()?.name
    }
}



// MARK: Codable

extension ID: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.id = try container.decode(Int.self)
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.id)
    }
}

extension ID: ExpressibleByIntegerLiteral {
    init(integerLiteral value: Int) {
        self.id = value
    }
}
