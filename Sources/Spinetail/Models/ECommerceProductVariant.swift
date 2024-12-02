import Foundation
import PrchModel

/** Information about a specific product variant. */
public struct ECommerceProductVariant: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The backorders of a product variant. */
  public let backorders: String?

  /** The date and time the product was created in ISO 8601 format. */
  public let createdAt: MailchimpOptionalDate

  /** A unique identifier for the product variant. */
  public let id: String?

  /** The image URL for a product variant. */
  public let imageURL: String?

  /** The inventory quantity of a product variant. */
  public let inventoryQuantity: Int?

  /** The price of a product variant. */
  public let price: Double?

  /** The stock keeping unit (SKU) of a product variant. */
  public let sku: String?

  /** The title of a product variant. */
  public let title: String?

  /** The date and time the product was last updated in ISO 8601 format. */
  public let updatedAt: MailchimpOptionalDate

  /** The URL for a product variant. */
  public let url: String?

  /** The visibility of a product variant. */
  public let visibility: String?

  public init(links: [ResourceLink]? = nil, backorders: String? = nil, createdAt: MailchimpOptionalDate, id: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, title: String? = nil, updatedAt: MailchimpOptionalDate, url: String? = nil, visibility: String? = nil) {
    self.links = links
    self.backorders = backorders
    self.createdAt = createdAt
    self.id = id
    self.imageURL = imageURL
    self.inventoryQuantity = inventoryQuantity
    self.price = price
    self.sku = sku
    self.title = title
    self.updatedAt = updatedAt
    self.url = url
    self.visibility = visibility
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case backorders
    case createdAt = "created_at"
    case id
    case imageURL = "image_url"
    case inventoryQuantity = "inventory_quantity"
    case price
    case sku
    case title
    case updatedAt = "updated_at"
    case url
    case visibility
  }
}
