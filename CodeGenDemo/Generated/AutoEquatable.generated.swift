// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable file_length
fileprivate func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

fileprivate func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}


// MARK: - AutoEquatable for classes, protocols, structs
// MARK: - Movie AutoEquatable
extension Movie: Equatable {}
func == (lhs: Movie, rhs: Movie) -> Bool {
    guard lhs.episodeID == rhs.episodeID else { return false }
    guard lhs.title == rhs.title else { return false }
    guard lhs.openingCrawl == rhs.openingCrawl else { return false }
    guard lhs.director == rhs.director else { return false }
    guard lhs.producer == rhs.producer else { return false }
    guard lhs.releaseDate == rhs.releaseDate else { return false }
    return true
}
// MARK: - Person AutoEquatable
extension Person: Equatable {}
func == (lhs: Person, rhs: Person) -> Bool {
    guard lhs.name == rhs.name else { return false }
    guard compareOptionals(lhs: lhs.height, rhs: rhs.height, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.mass, rhs: rhs.mass, compare: ==) else { return false }
    guard lhs.hairColor == rhs.hairColor else { return false }
    guard lhs.skinColor == rhs.skinColor else { return false }
    guard lhs.eyeColor == rhs.eyeColor else { return false }
    guard lhs.homeworld == rhs.homeworld else { return false }
    return true
}
// MARK: - Planet AutoEquatable
extension Planet: Equatable {}
func == (lhs: Planet, rhs: Planet) -> Bool {
    guard lhs.name == rhs.name else { return false }
    guard compareOptionals(lhs: lhs.rotationPeriod, rhs: rhs.rotationPeriod, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.orbitalPeriod, rhs: rhs.orbitalPeriod, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.diameter, rhs: rhs.diameter, compare: ==) else { return false }
    guard lhs.climate == rhs.climate else { return false }
    guard lhs.gravity == rhs.gravity else { return false }
    guard lhs.terrain == rhs.terrain else { return false }
    guard compareOptionals(lhs: lhs.surfaceWater, rhs: rhs.surfaceWater, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.population, rhs: rhs.population, compare: ==) else { return false }
    return true
}
// MARK: - Ship AutoEquatable
extension Ship: Equatable {}
func == (lhs: Ship, rhs: Ship) -> Bool {
    guard lhs.name == rhs.name else { return false }
    guard lhs.model == rhs.model else { return false }
    guard lhs.manufacturer == rhs.manufacturer else { return false }
    guard lhs.starshipClass == rhs.starshipClass else { return false }
    guard lhs.costInCredits == rhs.costInCredits else { return false }
    guard compareOptionals(lhs: lhs.length, rhs: rhs.length, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.crew, rhs: rhs.crew, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.passengers, rhs: rhs.passengers, compare: ==) else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
