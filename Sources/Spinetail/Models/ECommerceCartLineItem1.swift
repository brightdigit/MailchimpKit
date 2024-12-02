import Foundation
import PrchModel

/** Information about a specific cart line item. */
public struct ECommerceCartLineItem1: Codable, Equatable, Content {
  /** A unique identifier for the cart line item. */
  public let id: String

  /** The price of a cart line item. */
  public let price: Double

  /** A unique identifier for the product associated with the cart line item. */
  public let productId: String

  /** A unique identifier for the product variant associated with the cart line item. */
  public let productVariantId: String

  /** The quantity of a cart line item. */
  public let quantity: Int

  public init(id: String, price: Double, productId: String, productVariantId: String, quantity: Int) {
    self.id = id
    self.price = price
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case price
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
  }
}
