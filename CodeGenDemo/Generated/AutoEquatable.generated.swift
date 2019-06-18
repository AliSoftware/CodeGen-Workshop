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

// MARK: - AutoEquatable for Enums
// MARK: - Item AutoEquatable
extension Item: Equatable {}
func == (lhs: Item, rhs: Item) -> Bool {
    switch (lhs, rhs) {
    case (.ship(let lhs), .ship(let rhs)):
        return lhs == rhs
    case (.person(let lhs), .person(let rhs)):
        return lhs == rhs
    case (.film(let lhs), .film(let rhs)):
        return lhs == rhs
    default: return false
    }
}
