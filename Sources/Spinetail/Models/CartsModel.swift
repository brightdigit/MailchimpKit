import Foundation

import PrchModel
/** A collection of a store's carts. */
public struct CartsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a cart. */
  public var carts: [ECommerceCartModel]?

  /** The store id. */
  public var storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, carts: [ECommerceCartModel]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.carts = carts
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case carts
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
