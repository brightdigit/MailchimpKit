import Foundation
import PrchModel

/** Stats for Campaign A. */
public struct CampaignA: Codable, Equatable, Content {
  /** Abuse reports for Campaign A. */
  public let abuseReports: Int?

  /** Bounces for Campaign A. */
  public let bounces: Int?

  /** Forwards for Campaign A. */
  public let forwards: Int?

  /** Opens from forwards for Campaign A. */
  public let forwardsOpens: Int?

  /** The last open for Campaign A. */
  public let lastOpen: String?

  /** Opens for Campaign A. */
  public let opens: Int?

  /** Recipient Clicks for Campaign A. */
  public let recipientClicks: Int?

  /** Unique opens for Campaign A. */
  public let uniqueOpens: Int?

  /** Unsubscribes for Campaign A. */
  public let unsubs: Int?

  public init(abuseReports: Int? = nil, bounces: Int? = nil, forwards: Int? = nil, forwardsOpens: Int? = nil, lastOpen: String? = nil, opens: Int? = nil, recipientClicks: Int? = nil, uniqueOpens: Int? = nil, unsubs: Int? = nil) {
    self.abuseReports = abuseReports
    self.bounces = bounces
    self.forwards = forwards
    self.forwardsOpens = forwardsOpens
    self.lastOpen = lastOpen
    self.opens = opens
    self.recipientClicks = recipientClicks
    self.uniqueOpens = uniqueOpens
    self.unsubs = unsubs
  }

  public enum CodingKeys: String, CodingKey {
    case abuseReports = "abuse_reports"
    case bounces
    case forwards
    case forwardsOpens = "forwards_opens"
    case lastOpen = "last_open"
    case opens
    case recipientClicks = "recipient_clicks"
    case uniqueOpens = "unique_opens"
    case unsubs
  }
}
