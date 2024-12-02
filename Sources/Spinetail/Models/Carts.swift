import Foundation
import PrchModel

/** A collection of a store's carts. */
public struct Carts: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a cart. */
  public let carts: [ECommerceCart]?

  /** The store id. */
  public let storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, carts: [ECommerceCart]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.carts = carts
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case carts
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
