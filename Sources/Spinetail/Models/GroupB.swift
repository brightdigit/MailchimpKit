import Foundation
import PrchModel

/** Stats for Group B. */
public struct GroupB: Codable, Equatable, Content {
  /** The percentage of total clicks for Group B. */
  public let clickPercentageb: Double?

  /** The total number of clicks for Group B. */
  public let totalClicksb: Int?

  /** The percentage of unique clicks for Group B. */
  public let uniqueClickPercentageb: Double?

  /** The number of unique clicks for Group B. */
  public let uniqueClicksb: Int?

  public init(clickPercentageb: Double? = nil, totalClicksb: Int? = nil, uniqueClickPercentageb: Double? = nil, uniqueClicksb: Int? = nil) {
    self.clickPercentageb = clickPercentageb
    self.totalClicksb = totalClicksb
    self.uniqueClickPercentageb = uniqueClickPercentageb
    self.uniqueClicksb = uniqueClicksb
  }

  public enum CodingKeys: String, CodingKey {
    case clickPercentageb = "click_percentage_b"
    case totalClicksb = "total_clicks_b"
    case uniqueClickPercentageb = "unique_click_percentage_b"
    case uniqueClicksb = "unique_clicks_b"
  }
}
