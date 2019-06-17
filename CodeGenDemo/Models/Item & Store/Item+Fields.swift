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
    // FIXME: [Stage 5] sourcery, loop over every property of each case
    // FIXME: [Stage 6] use `person.homeworld.displayName ?? "?"` for `"person.homeworld"`
    var allFields: KeyValuePairs<String, Any> {
        switch self {
        case .ship(let ship):
            return [
                L10n.Ship.name: ship.name,
                L10n.Ship.model: ship.model
            ]
        case .person(let person):
            return [
                L10n.Person.name: person.name,
                L10n.Person.height: string(person.height), // when it's not a string, this helper transforms it nicely
                L10n.Person.homeworld: string(person.homeworld),
                L10n.Person.starships: person.starships.compactMap { $0.item() }, // when it's an `[ID<T>]`, transform it to an `[Item]`
                L10n.Person.films: person.films.compactMap { $0.item() } // when it's an `[ID<T>]`, transform it to an `[Item]`
            ]
        case .film(let film):
            return [
                L10n.Film.title: film.title,
            ]
        }
    }
}
