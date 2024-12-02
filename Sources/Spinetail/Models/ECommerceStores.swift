import Foundation
import PrchModel

/** A collection of stores in the account. */
public struct ECommerceStores: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a store. */
  public let stores: [ECommerceStore]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, stores: [ECommerceStore]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.stores = stores
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case stores
    case totalItems = "total_items"
  }
}
