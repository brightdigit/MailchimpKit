import Foundation
import PrchModel

/** A collection of the store's customers. */
public struct Customers: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a customer of a store. */
  public let customers: [ECommerceCustomer]?

  /** The store id. */
  public let storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, customers: [ECommerceCustomer]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.customers = customers
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case customers
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
