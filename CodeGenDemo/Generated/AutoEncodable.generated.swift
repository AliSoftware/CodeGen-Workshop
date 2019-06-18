// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// MARK: - Movie AutoEncodable

extension Movie: Encodable {
  enum CodingKeys: String, CodingKey {
    case episodeID
    case title
    case director
    case producer
    case releaseDate
    case characters
    case planets
    case starships
  }

  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.episodeID, forKey: .episodeID)
    try container.encode(self.title, forKey: .title)
    try container.encode(self.director, forKey: .director)
    try container.encode(self.producer, forKey: .producer)
    try container.encode(self.releaseDate, forKey: .releaseDate)
    try container.encode(self.characters, forKey: .characters)
    try container.encode(self.planets, forKey: .planets)
    try container.encode(self.starships, forKey: .starships)
  }
}

// MARK: - Person AutoEncodable

extension Person: Encodable {
  enum CodingKeys: String, CodingKey {
    case name
    case height
    case mass
    case hairColor
    case skinColor
    case eyeColor
    case homeworld
    case films
    case starships
  }

  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.name, forKey: .name)
    try container.encode(self.height, forKey: .height)
    try container.encode(self.mass, forKey: .mass)
    try container.encode(self.hairColor, forKey: .hairColor)
    try container.encode(self.skinColor, forKey: .skinColor)
    try container.encode(self.eyeColor, forKey: .eyeColor)
    try container.encode(self.homeworld, forKey: .homeworld)
    try container.encode(self.films, forKey: .films)
    try container.encode(self.starships, forKey: .starships)
  }
}

// MARK: - Planet AutoEncodable

extension Planet: Encodable {
  enum CodingKeys: String, CodingKey {
    case name
    case rotationPeriod
    case orbitalPeriod
    case diameter
    case climate
    case gravity
    case terrain
    case surfaceWater
    case population
    case residents
    case films
  }

  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.name, forKey: .name)
    try container.encode(self.rotationPeriod, forKey: .rotationPeriod)
    try container.encode(self.orbitalPeriod, forKey: .orbitalPeriod)
    try container.encode(self.diameter, forKey: .diameter)
    try container.encode(self.climate, forKey: .climate)
    try container.encode(self.gravity, forKey: .gravity)
    try container.encode(self.terrain, forKey: .terrain)
    try container.encode(self.surfaceWater, forKey: .surfaceWater)
    try container.encode(self.population, forKey: .population)
    try container.encode(self.residents, forKey: .residents)
    try container.encode(self.films, forKey: .films)
  }
}

// MARK: - Ship AutoEncodable

extension Ship: Encodable {
  enum CodingKeys: String, CodingKey {
    case name
    case model
    case manufacturer
    case starshipClass
    case costInCredits
    case length
    case crew
    case passengers
    case pilots
    case films
  }

  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.name, forKey: .name)
    try container.encode(self.model, forKey: .model)
    try container.encode(self.manufacturer, forKey: .manufacturer)
    try container.encode(self.starshipClass, forKey: .starshipClass)
    try container.encode(self.costInCredits, forKey: .costInCredits)
    try container.encode(self.length, forKey: .length)
    try container.encode(self.crew, forKey: .crew)
    try container.encode(self.passengers, forKey: .passengers)
    try container.encode(self.pilots, forKey: .pilots)
    try container.encode(self.films, forKey: .films)
  }
}

