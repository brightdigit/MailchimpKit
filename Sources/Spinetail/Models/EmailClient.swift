import Foundation
import PrchModel

/** The email client. */
public struct EmailClient: Codable, Equatable, Content {
  /** The name of the email client. */
  public let client: String?

  /** The number of subscribed members who used this email client. */
  public let members: Int?

  public init(client: String? = nil, members: Int? = nil) {
    self.client = client
    self.members = members
  }

  public enum CodingKeys: String, CodingKey {
    case client
    case members
  }
}
