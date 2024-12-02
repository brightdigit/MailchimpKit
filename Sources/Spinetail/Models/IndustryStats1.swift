import Foundation
import PrchModel

/** The average campaign statistics for your industry. */
public struct IndustryStats1: Codable, Equatable, Content {
  /** The industry abuse rate. */
  public let abuseRate: Double?

  /** The industry bounce rate. */
  public let bounceRate: Double?

  /** The industry click rate. */
  public let clickRate: Double?

  /** The industry open rate. */
  public let openRate: Double?

  /** The type of business industry associated with your account. For example: retail, education, etc. */
  public let type: String?

  /** The industry unopened rate. */
  public let unopenRate: Double?

  /** The industry unsubscribe rate. */
  public let unsubRate: Double?

  public init(abuseRate: Double? = nil, bounceRate: Double? = nil, clickRate: Double? = nil, openRate: Double? = nil, type: String? = nil, unopenRate: Double? = nil, unsubRate: Double? = nil) {
    self.abuseRate = abuseRate
    self.bounceRate = bounceRate
    self.clickRate = clickRate
    self.openRate = openRate
    self.type = type
    self.unopenRate = unopenRate
    self.unsubRate = unsubRate
  }

  public enum CodingKeys: String, CodingKey {
    case abuseRate = "abuse_rate"
    case bounceRate = "bounce_rate"
    case clickRate = "click_rate"
    case openRate = "open_rate"
    case type
    case unopenRate = "unopen_rate"
    case unsubRate = "unsub_rate"
  }
}
