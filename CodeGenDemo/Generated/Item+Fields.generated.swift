// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Foundation

private func string<T>(_ value: T?) -> String {
    guard let value = value else { return "-" }
    return String(describing: value)
}

extension Item {
    // FIXME: [Stage 6] use `person.homeworld.displayName ?? "?"` for `"person.homeworld"`
    var allFields: KeyValuePairs<String, Any> {
        switch self {
        case .film(let object):
            return [
                // Skip id
                L10n.Film.episodeID: string(object.episodeID),
                L10n.Film.title: object.title,
                // Skip openingCrawl
                L10n.Film.director: object.director,
                L10n.Film.producer: object.producer,
                L10n.Film.releaseDate: object.releaseDate,
                L10n.Film.characters: object.characters.compactMap { $0.item() },
                // Skip planets
                L10n.Film.starships: object.starships.compactMap { $0.item() },
            ]
        case .person(let object):
            return [
                // Skip id
                L10n.Person.name: object.name,
                L10n.Person.height: string(object.height),
                L10n.Person.mass: string(object.mass),
                L10n.Person.hairColor: object.hairColor,
                L10n.Person.skinColor: object.skinColor,
                L10n.Person.eyeColor: object.eyeColor,
                L10n.Person.homeworld: string(object.homeworld),
                L10n.Person.films: object.films.compactMap { $0.item() },
                L10n.Person.starships: object.starships.compactMap { $0.item() },
            ]
        case .ship(let object):
            return [
                // Skip id
                L10n.Ship.name: object.name,
                L10n.Ship.model: object.model,
                L10n.Ship.manufacturer: object.manufacturer,
                L10n.Ship.starshipClass: object.starshipClass,
                L10n.Ship.costInCredits: object.costInCredits,
                L10n.Ship.length: string(object.length),
                L10n.Ship.crew: string(object.crew),
                L10n.Ship.passengers: string(object.passengers),
                L10n.Ship.pilots: object.pilots.compactMap { $0.item() },
                L10n.Ship.films: object.films.compactMap { $0.item() },
            ]
        }
    }
}
