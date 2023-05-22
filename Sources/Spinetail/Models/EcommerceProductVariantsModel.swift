import Foundation

import PrchModel
/** A collection of a product's variants. */
public struct EcommerceProductVariantsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The product id. */
  public var productId: String?

  /** The store id. */
  public var storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** An array of objects, each representing a product's variants. */
  public var variants: [ECommerceProductVariantModel]?

  public init(links: [ResourceLinkModel]? = nil, productId: String? = nil, storeId: String? = nil, totalItems: Int? = nil, variants: [ECommerceProductVariantModel]? = nil) {
    self.links = links
    self.productId = productId
    self.storeId = storeId
    self.totalItems = totalItems
    self.variants = variants
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case productId = "product_id"
    case storeId = "store_id"
    case totalItems = "total_items"
    case variants
  }
}
