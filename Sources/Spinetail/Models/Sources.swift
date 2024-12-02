import Foundation
import PrchModel

/** The possible sources of any events that can trigger the webhook and whether they are enabled. */
public struct Sources: Codable, Equatable, Content {
  /** Whether the webhook is triggered by admin-initiated actions in the web interface. */
  public let admin: Bool?

  /** Whether the webhook is triggered by actions initiated via the API. */
  public let api: Bool?

  /** Whether the webhook is triggered by subscriber-initiated actions. */
  public let user: Bool?

  public init(admin: Bool? = nil, api: Bool? = nil, user: Bool? = nil) {
    self.admin = admin
    self.api = api
    self.user = user
  }

  public enum CodingKeys: String, CodingKey {
    case admin
    case api
    case user
  }
}
