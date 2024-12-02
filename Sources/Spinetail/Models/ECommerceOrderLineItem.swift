import Foundation
import PrchModel

/** Information about a specific order line. */
public struct ECommerceOrderLineItem: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The total discount amount applied to a line item. */
  public let discount: Double?

  /** A unique identifier for an order line item. */
  public let id: String?

  /** The image URL for a product. */
  public let imageURL: String?

  /** The order line item price. */
  public let price: Double?

  /** A unique identifier for the product associated with an order line item. */
  public let productId: String?

  /** The name of the product for an order line item. */
  public let productTitle: String?

  /** A unique identifier for the product variant associated with an order line item. */
  public let productVariantId: String?

  /** The name of the product variant for an order line item. */
  public let productVariantTitle: String?

  /** The order line item quantity. */
  public let quantity: Int?

  public init(links: [ResourceLink]? = nil, discount: Double? = nil, id: String? = nil, imageURL: String? = nil, price: Double? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil) {
    self.links = links
    self.discount = discount
    self.id = id
    self.imageURL = imageURL
    self.price = price
    self.productId = productId
    self.productTitle = productTitle
    self.productVariantId = productVariantId
    self.productVariantTitle = productVariantTitle
    self.quantity = quantity
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case discount
    case id
    case imageURL = "image_url"
    case price
    case productId = "product_id"
    case productTitle = "product_title"
    case productVariantId = "product_variant_id"
    case productVariantTitle = "product_variant_title"
    case quantity
  }
}
