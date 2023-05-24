import Foundation

import PrchModel
/** For sent campaigns, a summary of opens, clicks, and e-commerce data. */
public struct CampaignReportSummary2Model: Codable, Equatable, Content {
  /** The number of unique clicks divided by the total number of successful deliveries. */
  public var clickRate: Double?

  /** The total number of clicks for an campaign. */
  public var clicks: Int?

  public var ecommerce: ECommerceReportModel?

  /** The number of unique opens divided by the total number of successful deliveries. */
  public var openRate: Double?

  /** The total number of opens for a campaign. */
  public var opens: Int?

  /** The number of unique clicks. */
  public var subscriberClicks: Int?

  /** The number of unique opens. */
  public var uniqueOpens: Int?

  public init(clickRate: Double? = nil, clicks: Int? = nil, ecommerce: ECommerceReportModel? = nil, openRate: Double? = nil, opens: Int? = nil, subscriberClicks: Int? = nil, uniqueOpens: Int? = nil) {
    self.clickRate = clickRate
    self.clicks = clicks
    self.ecommerce = ecommerce
    self.openRate = openRate
    self.opens = opens
    self.subscriberClicks = subscriberClicks
    self.uniqueOpens = uniqueOpens
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case clickRate = "click_rate"
    case clicks
    case ecommerce
    case openRate = "open_rate"
    case opens
    case subscriberClicks = "subscriber_clicks"
    case uniqueOpens = "unique_opens"
  }
}
