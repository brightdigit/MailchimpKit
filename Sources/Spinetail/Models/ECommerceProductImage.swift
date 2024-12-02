import Foundation
import PrchModel

/** Information about a specific product image. */
public struct ECommerceProductImage: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** A unique identifier for the product image. */
  public let id: String?

  /** The URL for a product image. */
  public let url: String?

  /** The list of product variants using the image. */
  public let variantIds: [String]?

  public init(links: [ResourceLink]? = nil, id: String? = nil, url: String? = nil, variantIds: [String]? = nil) {
    self.links = links
    self.id = id
    self.url = url
    self.variantIds = variantIds
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case id
    case url
    case variantIds = "variant_ids"
  }
}
