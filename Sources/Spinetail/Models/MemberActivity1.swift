import Foundation
import PrchModel

/** A summary of the interaction with the campaign. */
public struct MemberActivity1: Codable, Equatable, Content {
  /** The date and time recorded for the action in ISO 8601 format. */
  public let timestamp: MailchimpOptionalDate

  public init(timestamp: MailchimpOptionalDate) {
    self.timestamp = timestamp
  }

  public enum CodingKeys: String, CodingKey {
    case timestamp
  }
}
