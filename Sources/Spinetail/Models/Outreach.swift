import Foundation
import PrchModel

/** The outreach associated with this order. For example, an email campaign or Facebook ad. */
public struct Outreach: Codable, Equatable, Content {
  /** A unique identifier for the outreach. Can be an email campaign ID. */
  public let id: String?

  /** The name for the outreach. */
  public let name: String?

  /** The date and time the Outreach was published in ISO 8601 format. */
  public let publishedTime: MailchimpOptionalDate

  /** The type of the outreach. */
  public let type: String?

  public init(id: String? = nil, name: String? = nil, publishedTime: MailchimpOptionalDate, type: String? = nil) {
    self.id = id
    self.name = name
    self.publishedTime = publishedTime
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case name
    case publishedTime = "published_time"
    case type
  }
}
