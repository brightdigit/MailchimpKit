import Foundation
import PrchModel

/** Information about a specific product variant. */
public struct ECommerceProductVariant1: Codable, Equatable, Content {
  /** A unique identifier for the product variant. */
  public let id: String

  /** The title of a product variant. */
  public let title: String

  /** The backorders of a product variant. */
  public let backorders: String?

  /** The image URL for a product variant. */
  public let imageURL: String?

  /** The inventory quantity of a product variant. */
  public let inventoryQuantity: Int?

  /** The price of a product variant. */
  public let price: Double?

  /** The stock keeping unit (SKU) of a product variant. */
  public let sku: String?

  /** The URL for a product variant. */
  public let url: String?

  /** The visibility of a product variant. */
  public let visibility: String?

  public init(id: String, title: String, backorders: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, url: String? = nil, visibility: String? = nil) {
    self.id = id
    self.title = title
    self.backorders = backorders
    self.imageURL = imageURL
    self.inventoryQuantity = inventoryQuantity
    self.price = price
    self.sku = sku
    self.url = url
    self.visibility = visibility
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case title
    case backorders
    case imageURL = "image_url"
    case inventoryQuantity = "inventory_quantity"
    case price
    case sku
    case url
    case visibility
  }
}
