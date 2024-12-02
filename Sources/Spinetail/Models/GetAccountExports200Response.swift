import Foundation
import PrchModel

/** An array of objects, each representing an account export. */
public struct GetAccountExports200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an account export. */
  public let exports: [AccountExportsInner]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, exports: [AccountExportsInner]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.exports = exports
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case exports
    case totalItems = "total_items"
  }
}
