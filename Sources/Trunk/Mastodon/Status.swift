import Foundation

extension Mastodon {
    /// Docs:
    /// https://docs.joinmastodon.org/entities/Status/
    public struct Status: Codable, Sendable, Identifiable {
        public let id: String
        public let uri: String
        public let created_at: Date
        public let account: Account
        public let content: String
        public let visibility: Visibility
        public let sensitive: Bool
        public let spoiler_text: String
        public let media_attachments: [MediaAttachment]
        // skip `application`
        // skip `application[name]`
        // skip `application[website]`
        public let mentions: [Mention]
        public let tags: [Tag]
        public let emojis: [CustomEmoji]
        public let reblogs_count: Int
        public let favourites_count: Int
        public let replies_count: Int
        public let url: String?
        public let in_reply_to_id: String?
        public let in_reply_to_account_id: String?
        // skip `reblog` due to Swift
        public let poll: Poll?
        public let card: PreviewCard?
        public let language: String?
        public let text: String?
        public let edited_at: Date?
        public let favourited: Bool?
        public let reblogged: Bool?
        public let muted: Bool?
        public let bookmarked: Bool?
        public let pinned: Bool?
        public let filtered: [FilterResult]?

        /// Docs:
        /// https://docs.joinmastodon.org/entities/Status/#Mention
        public struct Mention: Codable, Sendable {
            /// > The account ID of the mentioned user.
            public let id: String
            
            public let username: String
            
            public let url: String
            
            /// > The webfinger acct: URI of the mentioned user.
            /// > Equivalent to `username` for local users, or `username@domain` for remote users.
            public let acct: String
        }

        public struct Tag: Codable, Sendable {
            public let name: String
            public let url: String
        }
    }
}

