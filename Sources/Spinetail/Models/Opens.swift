import Foundation
import PrchModel

/** An object describing the open activity for the campaign. */
public struct Opens: Codable, Equatable, Content {
  /** The date and time of the last recorded open in ISO 8601 format. */
  public let lastOpen: MailchimpOptionalDate

  /** The number of unique opens divided by the total number of successful deliveries. */
  public let openRate: Double?

  /** The total number of opens for a campaign. */
  public let opensTotal: Int?

  /** The total number of unique opens. */
  public let uniqueOpens: Int?

  public init(lastOpen: MailchimpOptionalDate, openRate: Double? = nil, opensTotal: Int? = nil, uniqueOpens: Int? = nil) {
    self.lastOpen = lastOpen
    self.openRate = openRate
    self.opensTotal = opensTotal
    self.uniqueOpens = uniqueOpens
  }

  public enum CodingKeys: String, CodingKey {
    case lastOpen = "last_open"
    case openRate = "open_rate"
    case opensTotal = "opens_total"
    case uniqueOpens = "unique_opens"
  }
}
