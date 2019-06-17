// FIXME: [Stage 2] swiftgen – Make Custom to create those from YAML

extension ItemStore {
  static let films: [Film] = [
    Film(
      id: 1,
      episodeID: 4,
      title: "A New Hope",
      openingCrawl: """
        It is a period of civil war.
        Rebel spaceships, striking
        from a hidden base, have won
        their first victory against
        the evil Galactic Empire.
        During the battle, Rebel
        spies managed to steal secret
        plans to the Empire's
        ultimate weapon, the DEATH
        STAR, an armored space
        station with enough power
        to destroy an entire planet.
        Pursued by the Empire's
        sinister agents, Princess
        Leia races home aboard her
        starship, custodian of the
        stolen plans that can save her
        people and restore
        freedom to the galaxy....
        """,
      director: "George Lucas",
      producer: "Gary Kurtz, Rick McCallum",
      releaseDate: "1977-05-25",
      characters: [1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,18,19,81],
      planets: [2,3,1],
      starships: [2,3,5,9,10,11,12,13]
    ),
    Film(
      id: 3,
      episodeID: 6,
      title: "Return of the Jedi",
      openingCrawl: """
        Luke Skywalker has returned to
        his home planet of Tatooine in
        an attempt to rescue his
        friend Han Solo from the
        clutches of the vile gangster
        Jabba the Hutt.
        Little does Luke know that the
        GALACTIC EMPIRE has secretly
        begun construction on a new
        armored space station even
        more powerful than the first
        dreaded Death Star.
        When completed, this ultimate
        weapon will spell certain doom
        for the small band of rebels
        struggling to restore freedom
        to the galaxy...
        """,
      director: "Richard Marquand",
      producer: "Howard G. Kazanjian, George Lucas, Rick McCallum",
      releaseDate: "1983-05-25",
      characters: [1,2,3,4,5,10,13,14,16,18,20,21,22,25,27,28,29,30,31,45],
      planets: [5,7,8,9,1],
      starships: [15,10,11,12,22,23,27,28,29,3,17,2]
    ),
    Film(
      id: 2,
      episodeID: 5,
      title: "The Empire Strikes Back",
      openingCrawl: """
        It is a dark time for the
        Rebellion. Although the Death
        Star has been destroyed,
        Imperial troops have driven the
        Rebel forces from their hidden
        base and pursued them across
        the galaxy.
        Evading the dreaded Imperial
        Starfleet, a group of freedom
        fighters led by Luke Skywalker
        has established a new secret
        base on the remote ice world
        of Hoth.
        The evil lord Darth Vader,
        obsessed with finding young
        Skywalker, has dispatched
        thousands of remote probes into
        the far reaches of space....
        """,
      director: "Irvin Kershner",
      producer: "Gary Kurtz, Rick McCallum",
      releaseDate: "1980-05-17",
      characters: [1,2,3,4,5,10,13,14,18,20,21,22,23,24,25,26],
      planets: [4,5,6,27],
      starships: [15,10,11,12,21,22,23,3,17]
    )
  ]
}
