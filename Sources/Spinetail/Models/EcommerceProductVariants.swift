import Foundation
import PrchModel

/** A collection of a product's variants. */
public struct EcommerceProductVariants: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The product id. */
  public let productId: String?

  /** The store id. */
  public let storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  /** An array of objects, each representing a product's variants. */
  public let variants: [ECommerceProductVariant]?

  public init(links: [ResourceLink]? = nil, productId: String? = nil, storeId: String? = nil, totalItems: Int? = nil, variants: [ECommerceProductVariant]? = nil) {
    self.links = links
    self.productId = productId
    self.storeId = storeId
    self.totalItems = totalItems
    self.variants = variants
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case productId = "product_id"
    case storeId = "store_id"
    case totalItems = "total_items"
    case variants
  }
}
