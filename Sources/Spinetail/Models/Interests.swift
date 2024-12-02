import Foundation
import PrchModel

/** A list of this category's interests */
public struct Interests: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The id for the interest category. */
  public let categoryId: String?

  /** An array of this category's interests */
  public let interests: [Interest]?

  /** The unique list id that the interests belong to. */
  public let listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, categoryId: String? = nil, interests: [Interest]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.categoryId = categoryId
    self.interests = interests
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case categoryId = "category_id"
    case interests
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
