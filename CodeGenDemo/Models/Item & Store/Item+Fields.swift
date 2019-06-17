//
//  ItemField.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import Foundation

private func string<T>(_ value: T?) -> String {
    guard let value = value else { return "-" }
    return String(describing: value)
}

extension Item {
    // FIXME: [Stage 1] swiftgen strings
    // FIXME: [Stage 5] sourcery, loop over every property of each case
    // FIXME: [Stage 6] use `person.homeworld.displayName ?? "?"` for `"person.homeworld"`
    var allFields: KeyValuePairs<String, Any> {
        switch self {
        case .ship(let ship):
            return [
                "ship.name": ship.name,
                "ship.model": ship.model
            ]
        case .person(let person):
            return [
                "person.name": person.name,
                "person.height": string(person.height), // when it's not a string, this helper transforms it nicely
                "person.homeworld": string(person.homeworld),
                "person.starships": person.starships.compactMap { $0.item() }, // when it's an `[ID<T>]`, transform it to an `[Item]`
                "person.films": person.films.compactMap { $0.item() } // when it's an `[ID<T>]`, transform it to an `[Item]`
            ]
        case .film(let film):
            return [
                "film.title": film.title,
            ]
        }
    }
}
