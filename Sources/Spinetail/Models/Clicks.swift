import Foundation
import PrchModel

/** An object describing the click activity for the campaign. */
public struct Clicks: Codable, Equatable, Content {
  /** The number of unique clicks divided by the total number of successful deliveries. */
  public let clickRate: Double?

  /** The total number of clicks for the campaign. */
  public let clicksTotal: Int?

  /** The date and time of the last recorded click for the campaign in ISO 8601 format. */
  public let lastClick: MailchimpOptionalDate

  /** The total number of unique clicks for links across a campaign. */
  public let uniqueClicks: Int?

  /** The total number of subscribers who clicked on a campaign. */
  public let uniqueSubscriberClicks: Int?

  public init(clickRate: Double? = nil, clicksTotal: Int? = nil, lastClick: MailchimpOptionalDate, uniqueClicks: Int? = nil, uniqueSubscriberClicks: Int? = nil) {
    self.clickRate = clickRate
    self.clicksTotal = clicksTotal
    self.lastClick = lastClick
    self.uniqueClicks = uniqueClicks
    self.uniqueSubscriberClicks = uniqueSubscriberClicks
  }

  public enum CodingKeys: String, CodingKey {
    case clickRate = "click_rate"
    case clicksTotal = "clicks_total"
    case lastClick = "last_click"
    case uniqueClicks = "unique_clicks"
    case uniqueSubscriberClicks = "unique_subscriber_clicks"
  }
}
