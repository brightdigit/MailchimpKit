import Foundation

import PrchModel
/** Information about a specific order line. */
public struct ECommerceOrderLineItemModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The total discount amount applied to a line item. */
  public var discount: Double?

  /** A unique identifier for an order line item. */
  public var id: String?

  /** The image URL for a product. */
  public var imageURL: String?

  /** The order line item price. */
  public var price: Double?

  /** A unique identifier for the product associated with an order line item. */
  public var productId: String?

  /** The name of the product for an order line item. */
  public var productTitle: String?

  /** A unique identifier for the product variant associated with an order line item. */
  public var productVariantId: String?

  /** The name of the product variant for an order line item. */
  public var productVariantTitle: String?

  /** The order line item quantity. */
  public var quantity: Int?

  public init(links: [ResourceLinkModel]? = nil, discount: Double? = nil, id: String? = nil, imageURL: String? = nil, price: Double? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil) {
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

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
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
