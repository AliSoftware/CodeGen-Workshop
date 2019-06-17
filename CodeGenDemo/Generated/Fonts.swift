// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSFont
  internal typealias Font = NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
  internal typealias Font = UIFont
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Fonts

// swiftlint:disable identifier_name line_length type_body_length
internal enum FontFamily {
  internal enum SFDistantGalaxy {
    internal static let regular = FontConvertible(name: "SFDistantGalaxy", family: "SF Distant Galaxy", path: "SFDistantGalaxy.ttf")
    internal static let italic = FontConvertible(name: "SFDistantGalaxy-Italic", family: "SF Distant Galaxy", path: "SFDistantGalaxy-Italic.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum SFDistantGalaxyAltOutline {
    internal static let regular = FontConvertible(name: "SFDistantGalaxyAltOutline", family: "SF Distant Galaxy AltOutline", path: "SFDistantGalaxyAltOutline.ttf")
    internal static let italic = FontConvertible(name: "SFDistantGalaxyAltOutline-Italic", family: "SF Distant Galaxy AltOutline", path: "SFDistantGalaxyAltOutline-I.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum SFDistantGalaxyAlternate {
    internal static let regular = FontConvertible(name: "SFDistantGalaxyAlternate", family: "SF Distant Galaxy Alternate", path: "SFDistantGalaxyAlternate.ttf")
    internal static let italic = FontConvertible(name: "SFDistantGalaxyAlternate-Italic", family: "SF Distant Galaxy Alternate", path: "SFDistantGalaxyAlternate-It.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum SFDistantGalaxyOutline {
    internal static let regular = FontConvertible(name: "SFDistantGalaxyOutline", family: "SF Distant Galaxy Outline", path: "SFDistantGalaxy-Outline.ttf")
    internal static let italic = FontConvertible(name: "SFDistantGalaxyOutline-Italic", family: "SF Distant Galaxy Outline", path: "SFDistantGalaxy-Outline-Ital.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal static let allCustomFonts: [FontConvertible] = [SFDistantGalaxy.all, SFDistantGalaxyAltOutline.all, SFDistantGalaxyAlternate.all, SFDistantGalaxyOutline.all].flatMap { $0 }
  internal static func registerAllCustomFonts() {
    allCustomFonts.forEach { $0.register() }
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal struct FontConvertible {
  internal let name: String
  internal let family: String
  internal let path: String

  internal func font(size: CGFloat) -> Font! {
    return Font(font: self, size: size)
  }

  internal func register() {
    // swiftlint:disable:next conditional_returns_on_newline
    guard let url = url else { return }
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
  }

  fileprivate var url: URL? {
    let bundle = Bundle(for: BundleToken.self)
    return bundle.url(forResource: path, withExtension: nil)
  }
}

internal extension Font {
  convenience init!(font: FontConvertible, size: CGFloat) {
    #if os(iOS) || os(tvOS) || os(watchOS)
    if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
      font.register()
    }
    #elseif os(OSX)
    if let url = font.url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
      font.register()
    }
    #endif

    self.init(name: font.name, size: size)
  }
}

private final class BundleToken {}
