import Foundation

extension Mastodon {
    public struct Application: Codable, Sendable {
        public let id: String
        public let name: String
        public let website: String?
        public let redirect_uri: String
        public let client_id: String
        public let client_secret: String
        public let vapid_key: String
    }
}
