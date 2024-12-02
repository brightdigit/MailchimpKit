import Foundation
import PrchModel

/** A collection of the store's promo rules. */
public struct PromoRules: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing promo rules defined for a store. */
  public let promoRules: [ECommercePromoRule]?

  /** The store id. */
  public let storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, promoRules: [ECommercePromoRule]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.promoRules = promoRules
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case promoRules = "promo_rules"
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
