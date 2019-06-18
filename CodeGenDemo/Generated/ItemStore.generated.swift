// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

class ItemStore {
  // Singletons are bad. Kids, don't do this at home (But hey, this is just a demo)
  static let shared = ItemStore()

  let items: [Item]

  private init() {
    self.items = [
      ItemStore.movies.map { .movie($0) },
      ItemStore.persons.map { .person($0) },
      ItemStore.planets.map { .planet($0) },
      ItemStore.ships.map { .ship($0) },
    ].flatMap({$0}).sorted(by: { $0.name < $1.name })
  }
}

extension ItemStore {
  subscript(id: ID<Movie>) -> Movie? {
    for case .movie(let object) in self.items where object.id == id.id {
      return object
    }
    return nil
  }
  subscript(id: ID<Person>) -> Person? {
    for case .person(let object) in self.items where object.id == id.id {
      return object
    }
    return nil
  }
  subscript(id: ID<Planet>) -> Planet? {
    for case .planet(let object) in self.items where object.id == id.id {
      return object
    }
    return nil
  }
  subscript(id: ID<Ship>) -> Ship? {
    for case .ship(let object) in self.items where object.id == id.id {
      return object
    }
    return nil
  }
}

extension ItemStore {
  static let filters: KeyValuePairs<String, (Item) -> Bool> = [
    L10n.Filters.all: { _ in true },
    L10n.Filters.movies: { guard case .movie = $0 else { return false }; return true },
    L10n.Filters.persons: { guard case .person = $0 else { return false }; return true },
    L10n.Filters.planets: { guard case .planet = $0 else { return false }; return true },
    L10n.Filters.ships: { guard case .ship = $0 else { return false }; return true },
  ]
}
