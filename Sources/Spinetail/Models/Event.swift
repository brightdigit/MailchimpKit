import Foundation
import PrchModel

/** A specific event for a contact. */
public struct Event: Codable, Equatable, Content {
  /** The name for this type of event ('purchased', 'visited', etc). Must be 2-30 characters in length */
  public let name: String?

  /** The date and time the event occurred in ISO 8601 format. */
  public let occurredAt: MailchimpOptionalDate

  /** An optional list of properties */
  public let properties: [String: String]?

  public init(name: String? = nil, occurredAt: MailchimpOptionalDate, properties: [String: String]? = nil) {
    self.name = name
    self.occurredAt = occurredAt
    self.properties = properties
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case occurredAt = "occurred_at"
    case properties
  }
}
