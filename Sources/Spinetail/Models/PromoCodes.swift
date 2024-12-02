import Foundation
import PrchModel

/** A collection of the store's promo codes. */
public struct PromoCodes: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing promo codes defined for a store. */
  public let promoCodes: [ECommercePromoCode]?

  /** The store id. */
  public let storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, promoCodes: [ECommercePromoCode]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.promoCodes = promoCodes
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case promoCodes = "promo_codes"
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
