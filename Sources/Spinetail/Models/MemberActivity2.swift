import Foundation
import PrchModel

/** A summary of the interaction with the campaign. */
public struct MemberActivity2: Codable, Equatable, Content {
  /** One of the following actions: 'open', 'click', or 'bounce' */
  public let action: String?

  /** The IP address recorded for the action. */
  public let ip: String?

  /** The date and time recorded for the action in ISO 8601 format. */
  public let timestamp: MailchimpOptionalDate

  /** If the action is a 'bounce', the type of bounce received: 'hard', 'soft'. */
  public let type: String?

  /** If the action is a 'click', the URL on which the member clicked. */
  public let url: String?

  public init(action: String? = nil, ip: String? = nil, timestamp: MailchimpOptionalDate, type: String? = nil, url: String? = nil) {
    self.action = action
    self.ip = ip
    self.timestamp = timestamp
    self.type = type
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case action
    case ip
    case timestamp
    case type
    case url
  }
}
