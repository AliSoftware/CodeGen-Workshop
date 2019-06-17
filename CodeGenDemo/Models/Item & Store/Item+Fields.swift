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
    // FIXME: sourcery, loop over every property of each case
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
                "person.homeworld": person.homeworld.displayName ?? "?", // when it's a ID<T>, .displayName gets a string to display
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
