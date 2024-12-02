import Foundation
import PrchModel

/** A single instance of a campaign referral. */
public struct Referrer: Codable, Equatable, Content {
  /** The number of clicks a single referrer generated. */
  public let clicks: Int?

  /** The timestamp for the first click from this referrer. */
  public let firstClick: MailchimpOptionalDate

  /** The timestamp for the last click from this referrer. */
  public let lastClick: MailchimpOptionalDate

  /** A referrer (truncated to 100 bytes). */
  public let referrer: String?

  public init(clicks: Int? = nil, firstClick: MailchimpOptionalDate, lastClick: MailchimpOptionalDate, referrer: String? = nil) {
    self.clicks = clicks
    self.firstClick = firstClick
    self.lastClick = lastClick
    self.referrer = referrer
  }

  public enum CodingKeys: String, CodingKey {
    case clicks
    case firstClick = "first_click"
    case lastClick = "last_click"
    case referrer
  }
}
