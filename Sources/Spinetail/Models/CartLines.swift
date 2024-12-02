import Foundation
import PrchModel

/** A collection of a cart's line items. */
public struct CartLines: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The cart id. */
  public let cartId: String?

  /** An array of objects, each representing a cart's line item. */
  public let lines: [ECommerceCartLineItem]?

  /** The store id. */
  public let storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, cartId: String? = nil, lines: [ECommerceCartLineItem]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.cartId = cartId
    self.lines = lines
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case cartId = "cart_id"
    case lines
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
