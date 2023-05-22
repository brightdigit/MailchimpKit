import Foundation

import PrchModel
/** Information about a specific cart line item. */
public struct ECommerceCartLineItem2Model: Codable, Equatable, Content {
  /** The price of a cart line item. */
  public var price: Double?

  /** A unique identifier for the product associated with the cart line item. */
  public var productId: String?

  /** A unique identifier for the product variant associated with the cart line item. */
  public var productVariantId: String?

  /** The quantity of a cart line item. */
  public var quantity: Int?

  public init(price: Double? = nil, productId: String? = nil, productVariantId: String? = nil, quantity: Int? = nil) {
    self.price = price
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case price
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
  }
}
