// FIXME: [Stage 2] swiftgen – Make Custom to create those from YAML

extension ItemStore {
  static let ships: [Ship] = [
    Ship(
      id: 15,
      name: "Executor",
      model: "Executor-class star dreadnought",
      manufacturer: "Kuat Drive Yards, Fondor Shipyards",
      starshipClass: "Star dreadnought",
      costInCredits: "1143350000",
      length: 19000,
      crew: 279144,
      passengers: 38000,
      pilots: [],
      films: [2,3]
    ),
    Ship(
      id: 10,
      name: "Millennium Falcon",
      model: "YT-1300 light freighter",
      manufacturer: "Corellian Engineering Corporation",
      starshipClass: "Light freighter",
      costInCredits: "100000",
      length: 34.37,
      crew: 4,
      passengers: 6,
      pilots: [13,14,25,31],
      films: [2,3,1]
    ),
    Ship(
      id: 12,
      name: "X-wing",
      model: "T-65 X-wing",
      manufacturer: "Incom Corporation",
      starshipClass: "Starfighter",
      costInCredits: "149999",
      length: 12.5,
      crew: 1,
      passengers: 0,
      pilots: [1,9,18,19],
      films: [2,3,1]
    ),
    Ship(
      id: 13,
      name: "TIE Advanced x1",
      model: "Twin Ion Engine Advanced x1",
      manufacturer: "Sienar Fleet Systems",
      starshipClass: "Starfighter",
      costInCredits: "unknown",
      length: 9.2,
      crew: 1,
      passengers: 0,
      pilots: [4],
      films: [1]
    ),
    Ship(
      id: 22,
      name: "Imperial shuttle",
      model: "Lambda-class T-4a shuttle",
      manufacturer: "Sienar Fleet Systems",
      starshipClass: "Armed government transport",
      costInCredits: "240000",
      length: 20,
      crew: 6,
      passengers: 20,
      pilots: [1,13,14],
      films: [2,3]
    ),
    Ship(
      id: 3,
      name: "Star Destroyer",
      model: "Imperial I-class Star Destroyer",
      manufacturer: "Kuat Drive Yards",
      starshipClass: "Star Destroyer",
      costInCredits: "150000000",
      length: 1_600,
      crew: 47060,
      passengers: 0,
      pilots: [],
      films: [2,3,1]
    )
  ]
}
