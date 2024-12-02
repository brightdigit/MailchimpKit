import Foundation
import PrchModel

/** A list of available segments. */
public struct CollectionOfSegments: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The list id. */
  public let listId: String?

  /** An array of objects, each representing a list segment. */
  public let segments: [List7]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, listId: String? = nil, segments: [List7]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.segments = segments
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case segments
    case totalItems = "total_items"
  }
}
