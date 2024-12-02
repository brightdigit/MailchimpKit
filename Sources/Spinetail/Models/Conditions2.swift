import Foundation
import PrchModel

/** The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don't have conditions. */
public struct Conditions2: Codable, Equatable, Content {
  /** Match type. */
  public enum Match: String, Codable, Equatable, CaseIterable {
    case any
    case all
  }

  /** An array of segment conditions. */
  public let conditions: [[[String: String]]]?

  /** Match type. */
  public let match: Match?

  public init(conditions: [[[String: String]]]? = nil, match: Match? = nil) {
    self.conditions = conditions
    self.match = match
  }

  public enum CodingKeys: String, CodingKey {
    case conditions
    case match
  }
}
