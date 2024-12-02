import Foundation
import PrchModel

/** Information about a specific order line. */
public struct ECommerceOrderLineItem2: Codable, Equatable, Content {
  /** The total discount amount applied to this line item. */
  public let discount: Double?

  /** The price of an order line item. */
  public let price: Double?

  /** A unique identifier for the product associated with the order line item. */
  public let productId: String?

  /** A unique identifier for the product variant associated with the order line item. */
  public let productVariantId: String?

  /** The quantity of an order line item. */
  public let quantity: Int?

  public init(discount: Double? = nil, price: Double? = nil, productId: String? = nil, productVariantId: String? = nil, quantity: Int? = nil) {
    self.discount = discount
    self.price = price
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
  }

  public enum CodingKeys: String, CodingKey {
    case discount
    case price
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
  }
}
