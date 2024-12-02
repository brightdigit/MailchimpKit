import Foundation
import PrchModel

/** Partial matches of the provided search query. */
public struct PartialMatches: Codable, Equatable, Content {
  /** An array of objects, each representing a specific list member. */
  public let members: [ListMembers2]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(members: [ListMembers2]? = nil, totalItems: Int? = nil) {
    self.members = members
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case members
    case totalItems = "total_items"
  }
}
