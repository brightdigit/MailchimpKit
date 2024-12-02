import Foundation
import PrchModel

/** A collection of ecommerce products. */
public struct GetReportsIdEcommerceProductActivity200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public let products: [GetReportsIdEcommerceProductActivity200ResponseProductsInner]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, products: [GetReportsIdEcommerceProductActivity200ResponseProductsInner]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.products = products
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case products
    case totalItems = "total_items"
  }
}
