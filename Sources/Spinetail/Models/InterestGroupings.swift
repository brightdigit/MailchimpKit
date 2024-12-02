import Foundation
import PrchModel

/** Information about this list's interest categories. */
public struct InterestGroupings: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** This array contains individual interest categories. */
  public let categories: [InterestCategory]?

  /** The ID for the list that this category belongs to. */
  public let listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, categories: [InterestCategory]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.categories = categories
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case categories
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
