import Foundation
import PrchModel

/** A collection of orders in a store. */
public struct Orders1: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an order in a store. */
  public let orders: [ECommerceOrder]?

  /** The unique identifier for the store. */
  public let storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, orders: [ECommerceOrder]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.orders = orders
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case orders
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
