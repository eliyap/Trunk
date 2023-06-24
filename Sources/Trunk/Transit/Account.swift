import Foundation

extension Transit {
    public struct UserAccount: Codable, Sendable, Hashable {
        /// The domain name of the user's instance.
        /// e.g. `eliyap.social`
        public let instance: String
        
        /// The user's OAuth token.
        public let oauthToken: String
    }
}
