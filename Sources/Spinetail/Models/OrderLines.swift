import Foundation
import PrchModel

/** A collection of an order's line items. */
public struct OrderLines: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an order's line item. */
  public let lines: [ECommerceOrderLineItem]?

  /** The order id. */
  public let orderId: String?

  /** The store id. */
  public let storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, lines: [ECommerceOrderLineItem]? = nil, orderId: String? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.lines = lines
    self.orderId = orderId
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case lines
    case orderId = "order_id"
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
