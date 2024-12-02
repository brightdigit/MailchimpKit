import Foundation
import PrchModel

/** A summary of the click-throughs on the campaign's URL. */
public struct ClickSummary: Codable, Equatable, Content {
  /** The total number of clicks to the campaign's URL. */
  public let clicks: Int?

  /** The timestamp for the first click to the URL. */
  public let firstClick: MailchimpOptionalDate

  /** The timestamp for the last click to the URL. */
  public let lastClick: MailchimpOptionalDate

  /** A summary of the top click locations. */
  public let locations: [Location3]?

  public init(clicks: Int? = nil, firstClick: MailchimpOptionalDate, lastClick: MailchimpOptionalDate, locations: [Location3]? = nil) {
    self.clicks = clicks
    self.firstClick = firstClick
    self.lastClick = lastClick
    self.locations = locations
  }

  public enum CodingKeys: String, CodingKey {
    case clicks
    case firstClick = "first_click"
    case lastClick = "last_click"
    case locations
  }
}
