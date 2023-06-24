import Foundation

public struct TokenResponse: Codable, Sendable {
    public let access_token: String
    public let token_type: String
    public let scope: String
    public let created_at: Int
}
