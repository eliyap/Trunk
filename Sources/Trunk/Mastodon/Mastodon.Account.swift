import Foundation

extension Mastodon {
    public struct Account: Codable, Sendable {
        public let id: String
        public let username: String
        public let acct: String
        public let url: String
        public let display_name: String
        public let note: String
        public let avatar: String
        public let avatar_static: String
        public let header: String
        public let header_static: String
        public let locked: Bool
        public let fields: [Field]
        public let emojis: [CustomEmoji]
        public let bot: Bool
        public let group: Bool
        public let discoverable: Bool?
        public let noindex: Bool?
        // public let moved: Account? // Removed due to Swift
        public let suspended: Bool?
        public let limited: Bool?
        public let created_at: Date
        
        /// Removed due to bad date format which omits time information.
        /// e.g. `,"last_status_at":"2023-06-11",`
        // public let last_status_at: Date?
        
        public let statuses_count: Int
        public let followers_count: Int
        public let following_count: Int

        public struct Field: Codable, Sendable {
            public let name: String
            public let value: String
            public let verified_at: Date?
        }
    }
}
