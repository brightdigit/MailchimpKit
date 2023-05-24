import Foundation
import PrchModel

/** A collection of orders in an account. */
public struct Orders: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an order resource. */
  public let orders: [ECommerceOrder]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, orders: [ECommerceOrder]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.orders = orders
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case orders
    case totalItems = "total_items"
  }
}