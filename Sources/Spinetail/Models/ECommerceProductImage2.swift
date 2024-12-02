import Foundation
import PrchModel

/** Information about a specific product image. */
public struct ECommerceProductImage2: Codable, Equatable, Content {
  /** A unique identifier for the product image. */
  public let id: String?

  /** The URL for a product image. */
  public let url: String?

  /** The list of product variants using the image. */
  public let variantIds: [String]?

  public init(id: String? = nil, url: String? = nil, variantIds: [String]? = nil) {
    self.id = id
    self.url = url
    self.variantIds = variantIds
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case url
    case variantIds = "variant_ids"
  }
}
