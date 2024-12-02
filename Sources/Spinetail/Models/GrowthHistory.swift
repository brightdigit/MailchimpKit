import Foundation
import PrchModel

/** A month-by-month summary of a specific list's growth activity. */
public struct GrowthHistory: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a monthly growth report for a list. */
  public let history: [GrowthHistory]?

  /** The list id. */
  public let listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, history: [GrowthHistory]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.history = history
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case history
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
