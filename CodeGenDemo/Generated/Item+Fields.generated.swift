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
        case .movie(let object):
            return [
                // Skip id
                L10n.Movie.episodeID: string(object.episodeID),
                L10n.Movie.title: object.title,
                // Skip openingCrawl
                L10n.Movie.director: object.director,
                L10n.Movie.producer: object.producer,
                L10n.Movie.releaseDate: object.releaseDate,
                L10n.Movie.characters: object.characters.compactMap { $0.item() },
                // Skip planets
                L10n.Movie.starships: object.starships.compactMap { $0.item() },
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
                L10n.Person.homeworld: object.homeworld.displayName ?? "?",
                L10n.Person.films: object.films.compactMap { $0.item() },
                L10n.Person.starships: object.starships.compactMap { $0.item() },
            ]
        case .planet(let object):
            return [
                // Skip id
                L10n.Planet.name: object.name,
                L10n.Planet.rotationPeriod: string(object.rotationPeriod),
                L10n.Planet.orbitalPeriod: string(object.orbitalPeriod),
                L10n.Planet.diameter: string(object.diameter),
                L10n.Planet.climate: object.climate,
                L10n.Planet.gravity: object.gravity,
                L10n.Planet.terrain: object.terrain,
                L10n.Planet.surfaceWater: string(object.surfaceWater),
                L10n.Planet.population: string(object.population),
                L10n.Planet.residents: object.residents.compactMap { $0.item() },
                L10n.Planet.films: object.films.compactMap { $0.item() },
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
