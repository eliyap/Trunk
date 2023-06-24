import Foundation

extension Mastodon {
    public enum Visibility: String, CaseIterable, Codable, Sendable {
        case `public`
        case unlisted
        case `private`
        case direct
    }
}
