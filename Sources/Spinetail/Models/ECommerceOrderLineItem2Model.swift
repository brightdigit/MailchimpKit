import Foundation

import PrchModel
/** Information about a specific order line. */
public struct ECommerceOrderLineItem2Model: Codable, Equatable, Content {
  /** The total discount amount applied to this line item. */
  public var discount: Double?

  /** The price of an order line item. */
  public var price: Double?

  /** A unique identifier for the product associated with the order line item. */
  public var productId: String?

  /** A unique identifier for the product variant associated with the order line item. */
  public var productVariantId: String?

  /** The quantity of an order line item. */
  public var quantity: Int?

  public init(discount: Double? = nil, price: Double? = nil, productId: String? = nil, productVariantId: String? = nil, quantity: Int? = nil) {
    self.discount = discount
    self.price = price
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case discount
    case price
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
  }
}
