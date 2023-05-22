import Foundation

import PrchModel
/** Stats for Group A. */
public struct GroupAModel: Codable, Equatable, Content {
  /** The percentage of total clicks for Group A. */
  public var clickPercentagea: Double?

  /** The total number of clicks for Group A. */
  public var totalClicksa: Int?

  /** The percentage of unique clicks for Group A. */
  public var uniqueClickPercentagea: Double?

  /** The number of unique clicks for Group A. */
  public var uniqueClicksa: Int?

  public init(clickPercentagea: Double? = nil, totalClicksa: Int? = nil, uniqueClickPercentagea: Double? = nil, uniqueClicksa: Int? = nil) {
    self.clickPercentagea = clickPercentagea
    self.totalClicksa = totalClicksa
    self.uniqueClickPercentagea = uniqueClickPercentagea
    self.uniqueClicksa = uniqueClicksa
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case clickPercentagea = "click_percentage_a"
    case totalClicksa = "total_clicks_a"
    case uniqueClickPercentagea = "unique_click_percentage_a"
    case uniqueClicksa = "unique_clicks_a"
  }
}
