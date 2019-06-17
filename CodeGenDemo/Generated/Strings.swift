// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
internal enum L10n {
  /// Welcome to %@
  internal static func welcome(_ p1: String) -> String {
    return L10n.tr("Localizable", "welcome", p1)
  }

  internal enum Detail {
    /// Item Details
    internal static let title = L10n.tr("Localizable", "detail.title")
  }

  internal enum Film {
    /// Characters
    internal static let characters = L10n.tr("Localizable", "film.characters")
    /// %@ is StarWars' episode #%d. It was released in %@.
    internal static func description(_ p1: String, _ p2: Int, _ p3: String) -> String {
      return L10n.tr("Localizable", "film.description", p1, p2, p3)
    }
    /// Director
    internal static let director = L10n.tr("Localizable", "film.director")
    /// Episode #
    internal static let episodeID = L10n.tr("Localizable", "film.episodeID")
    /// Opening Crawl
    internal static let openingCrawl = L10n.tr("Localizable", "film.openingCrawl")
    /// Planets
    internal static let planets = L10n.tr("Localizable", "film.planets")
    /// Producer
    internal static let producer = L10n.tr("Localizable", "film.producer")
    /// Release Date
    internal static let releaseDate = L10n.tr("Localizable", "film.releaseDate")
    /// Starships
    internal static let starships = L10n.tr("Localizable", "film.starships")
    /// Title
    internal static let title = L10n.tr("Localizable", "film.title")
  }

  internal enum Filters {
    /// All
    internal static let all = L10n.tr("Localizable", "filters.all")
    /// Films
    internal static let films = L10n.tr("Localizable", "filters.films")
    /// Characters
    internal static let persons = L10n.tr("Localizable", "filters.persons")
    /// Planets
    internal static let planets = L10n.tr("Localizable", "filters.planets")
    /// Ships
    internal static let ships = L10n.tr("Localizable", "filters.ships")
  }

  internal enum List {
    /// StarWars Catalog
    internal static let title = L10n.tr("Localizable", "list.title")
  }

  internal enum Person {
    /// %@ is %d cm, weighs %.1f kg, and has appeared in %i film(s).
    internal static func description(_ p1: String, _ p2: Int, _ p3: Float, _ p4: Int) -> String {
      return L10n.tr("Localizable", "person.description", p1, p2, p3, p4)
    }
    /// Eye Color
    internal static let eyeColor = L10n.tr("Localizable", "person.eyeColor")
    /// Films
    internal static let films = L10n.tr("Localizable", "person.films")
    /// Hair Color
    internal static let hairColor = L10n.tr("Localizable", "person.hairColor")
    /// Height (cm)
    internal static let height = L10n.tr("Localizable", "person.height")
    /// Homeworld
    internal static let homeworld = L10n.tr("Localizable", "person.homeworld")
    /// Mass (kg)
    internal static let mass = L10n.tr("Localizable", "person.mass")
    /// Name
    internal static let name = L10n.tr("Localizable", "person.name")
    /// Skin Color
    internal static let skinColor = L10n.tr("Localizable", "person.skinColor")
    /// Starships
    internal static let starships = L10n.tr("Localizable", "person.starships")
  }

  internal enum Planet {
    /// Climate
    internal static let climate = L10n.tr("Localizable", "planet.climate")
    /// %1$@ is the home planet of %3$@. It appeared in %2$d film(s).
    internal static func description(_ p1: String, _ p2: Int, _ p3: String) -> String {
      return L10n.tr("Localizable", "planet.description", p1, p2, p3)
    }
    /// Diameter (m)
    internal static let diameter = L10n.tr("Localizable", "planet.diameter")
    /// Films
    internal static let films = L10n.tr("Localizable", "planet.films")
    /// Gravity
    internal static let gravity = L10n.tr("Localizable", "planet.gravity")
    /// Name
    internal static let name = L10n.tr("Localizable", "planet.name")
    /// Orbital Period
    internal static let orbitalPeriod = L10n.tr("Localizable", "planet.orbitalPeriod")
    /// Population
    internal static let population = L10n.tr("Localizable", "planet.population")
    /// Residents
    internal static let residents = L10n.tr("Localizable", "planet.residents")
    /// Rotation Period
    internal static let rotationPeriod = L10n.tr("Localizable", "planet.rotationPeriod")
    /// Surface Water (%)
    internal static let surfaceWater = L10n.tr("Localizable", "planet.surfaceWater")
    /// Terrain
    internal static let terrain = L10n.tr("Localizable", "planet.terrain")
    internal enum Description {
      /// nobody
      internal static let noResident = L10n.tr("Localizable", "planet.description.noResident")
    }
  }

  internal enum Ship {
    /// Cost (credits)
    internal static let costInCredits = L10n.tr("Localizable", "ship.costInCredits")
    /// Crew
    internal static let crew = L10n.tr("Localizable", "ship.crew")
    /// The %@ is a %@ ship which is crewed by %i people, can carry %i passengers and is %.2f meters long.
    internal static func description(_ p1: String, _ p2: String, _ p3: Int, _ p4: Int, _ p5: Float) -> String {
      return L10n.tr("Localizable", "ship.description", p1, p2, p3, p4, p5)
    }
    /// Films
    internal static let films = L10n.tr("Localizable", "ship.films")
    /// Length (m)
    internal static let length = L10n.tr("Localizable", "ship.length")
    /// Manufacturer
    internal static let manufacturer = L10n.tr("Localizable", "ship.manufacturer")
    /// Model
    internal static let model = L10n.tr("Localizable", "ship.model")
    /// Name
    internal static let name = L10n.tr("Localizable", "ship.name")
    /// Passengers
    internal static let passengers = L10n.tr("Localizable", "ship.passengers")
    /// Pilots
    internal static let pilots = L10n.tr("Localizable", "ship.pilots")
    /// Starship Class
    internal static let starshipClass = L10n.tr("Localizable", "ship.starshipClass")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    // swiftlint:disable:next nslocalizedstring_key
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
