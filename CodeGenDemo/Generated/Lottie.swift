import Lottie

enum Lottie: String, CaseIterable {
  // 2000x2000
  case bb8 = "bb8"

  // 300x300
  case lightsaber = "lightsaber"

  // 700x700
  case spaceship = "spaceship"


  func makeView() -> AnimationView {
    return AnimationView(name: self.rawValue)
  }
}
