import Foundation
import PrchModel

public struct TimewarpStatsInner: Codable, Equatable, Content {
  /** The number of bounces. */
  public let bounces: Int?

  /** The number of clicks. */
  public let clicks: Int?

  /** For campaigns sent with timewarp, the time zone group the member is apart of. */
  public let gmtOffset: Int?

  /** The date and time of the last click in ISO 8601 format. */
  public let lastClick: MailchimpOptionalDate

  /** The date and time of the last open in ISO 8601 format. */
  public let lastOpen: MailchimpOptionalDate

  /** The number of opens. */
  public let opens: Int?

  /** The number of unique clicks. */
  public let uniqueClicks: Int?

  /** The number of unique opens. */
  public let uniqueOpens: Int?

  public init(bounces: Int? = nil, clicks: Int? = nil, gmtOffset: Int? = nil, lastClick: MailchimpOptionalDate, lastOpen: MailchimpOptionalDate, opens: Int? = nil, uniqueClicks: Int? = nil, uniqueOpens: Int? = nil) {
    self.bounces = bounces
    self.clicks = clicks
    self.gmtOffset = gmtOffset
    self.lastClick = lastClick
    self.lastOpen = lastOpen
    self.opens = opens
    self.uniqueClicks = uniqueClicks
    self.uniqueOpens = uniqueOpens
  }

  public enum CodingKeys: String, CodingKey {
    case bounces
    case clicks
    case gmtOffset = "gmt_offset"
    case lastClick = "last_click"
    case lastOpen = "last_open"
    case opens
    case uniqueClicks = "unique_clicks"
    case uniqueOpens = "unique_opens"
  }
}
