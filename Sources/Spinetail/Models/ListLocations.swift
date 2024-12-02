import Foundation
import PrchModel

/** A summary of List's locations. */
public struct ListLocations: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The unique id for the list. */
  public let listId: String?

  /** An array of objects, each representing a list's top subscriber locations. */
  public let locations: [ListLocation]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, listId: String? = nil, locations: [ListLocation]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.locations = locations
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case locations
    case totalItems = "total_items"
  }
}
