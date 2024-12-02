import Foundation
import PrchModel

/** Information about a specific product. */
public struct ECommerceProduct: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The currency code */
  public let currencyCode: String?

  /** The description of a product. */
  public let description: String?

  /** The handle of a product. */
  public let handle: String?

  /** A unique identifier for the product. */
  public let id: String?

  /** The image URL for a product. */
  public let imageURL: String?

  /** An array of the product's images. */
  public let images: [ECommerceProductImage]?

  /** The date and time the product was published in ISO 8601 format. */
  public let publishedAtForeign: MailchimpOptionalDate

  /** The title of a product. */
  public let title: String?

  /** The type of product. */
  public let type: String?

  /** The URL for a product. */
  public let url: String?

  /** Returns up to 50 of the product's variants. To retrieve all variants use [Product Variants](https://mailchimp.com/developer/marketing/api/ecommerce-product-variants/). */
  public let variants: [ECommerceProductVariant]?

  /** The vendor for a product. */
  public let vendor: String?

  public init(
    links: [ResourceLink]? = nil,
    currencyCode: String? = nil,
    description: String? = nil,
    handle: String? = nil,
    id: String? = nil,
    imageURL: String? = nil,
    images: [ECommerceProductImage]? = nil,
    publishedAtForeign: MailchimpOptionalDate,
    title: String? = nil,
    type: String? = nil,
    url: String? = nil,
    variants: [ECommerceProductVariant]? = nil,
    vendor: String? = nil
  ) {
    self.links = links
    self.currencyCode = currencyCode
    self.description = description
    self.handle = handle
    self.id = id
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
    case links = "_links"
    case currencyCode = "currency_code"
    case description
    case handle
    case id
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
