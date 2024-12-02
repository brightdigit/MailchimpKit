import Foundation
import PrchModel

/** Information about a specific product variant. */
public struct ECommerceProductVariant2: Codable, Equatable, Content {
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

  /** The title of a product variant. */
  public let title: String?

  /** The URL for a product variant. */
  public let url: String?

  /** The visibility of a product variant. */
  public let visibility: String?

  public init(backorders: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, title: String? = nil, url: String? = nil, visibility: String? = nil) {
    self.backorders = backorders
    self.imageURL = imageURL
    self.inventoryQuantity = inventoryQuantity
    self.price = price
    self.sku = sku
    self.title = title
    self.url = url
    self.visibility = visibility
  }

  public enum CodingKeys: String, CodingKey {
    case backorders
    case imageURL = "image_url"
    case inventoryQuantity = "inventory_quantity"
    case price
    case sku
    case title
    case url
    case visibility
  }
}
