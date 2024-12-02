import Foundation
import PrchModel

/** Information about a specific product. */
public struct ECommerceProduct1: Codable, Equatable, Content {
  /** A unique identifier for the product. */
  public let id: String

  /** The title of a product. */
  public let title: String

  /** An array of the product's variants. At least one variant is required for each product. A variant can use the same `id` and `title` as the parent product. */
  public let variants: [ECommerceProductVariant1]

  /** The description of a product. */
  public let description: String?

  /** The handle of a product. */
  public let handle: String?

  /** The image URL for a product. */
  public let imageURL: String?

  /** An array of the product's images. */
  public let images: [ECommerceProductImage1]?

  /** The date and time the product was published. */
  public let publishedAtForeign: MailchimpOptionalDate

  /** The type of product. */
  public let type: String?

  /** The URL for a product. */
  public let url: String?

  /** The vendor for a product. */
  public let vendor: String?

  public init(id: String, title: String, variants: [ECommerceProductVariant1], description: String? = nil, handle: String? = nil, imageURL: String? = nil, images: [ECommerceProductImage1]? = nil, publishedAtForeign: MailchimpOptionalDate, type: String? = nil, url: String? = nil, vendor: String? = nil) {
    self.id = id
    self.title = title
    self.variants = variants
    self.description = description
    self.handle = handle
    self.imageURL = imageURL
    self.images = images
    self.publishedAtForeign = publishedAtForeign
    self.type = type
    self.url = url
    self.vendor = vendor
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case title
    case variants
    case description
    case handle
    case imageURL = "image_url"
    case images
    case publishedAtForeign = "published_at_foreign"
    case type
    case url
    case vendor
  }
}
