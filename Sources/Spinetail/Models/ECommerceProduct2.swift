import Foundation
import PrchModel

/** Information about a specific product. */
public struct ECommerceProduct2: Codable, Equatable, Content {
  /** The description of a product. */
  public let description: String?

  /** The handle of a product. */
  public let handle: String?

  /** The image URL for a product. */
  public let imageURL: String?

  /** An array of the product's images. */
  public let images: [ECommerceProductImage2]?

  /** The date and time the product was published in ISO 8601 format. */
  public let publishedAtForeign: MailchimpOptionalDate

  /** The title of a product. */
  public let title: String?

  /** The type of product. */
  public let type: String?

  /** The URL for a product. */
  public let url: String?

  /** An array of the product's variants. At least one variant is required for each product. A variant can use the same `id` and `title` as the parent product. */
  public let variants: [ECommerceProductVariant2]?

  /** The vendor for a product. */
  public let vendor: String?

  public init(description: String? = nil, handle: String? = nil, imageURL: String? = nil, images: [ECommerceProductImage2]? = nil, publishedAtForeign: MailchimpOptionalDate, title: String? = nil, type: String? = nil, url: String? = nil, variants: [ECommerceProductVariant2]? = nil, vendor: String? = nil) {
    self.description = description
    self.handle = handle
    self.imageURL = imageURL
    self.images = images
    self.publishedAtForeign = publishedAtForeign
    self.title = title
    self.type = type
    self.url = url
    self.variants = variants
    self.vendor = vendor
  }

  public enum CodingKeys: String, CodingKey {
    case description
    case handle
    case imageURL = "image_url"
    case images
    case publishedAtForeign = "published_at_foreign"
    case title
    case type
    case url
    case variants
    case vendor
  }
}
