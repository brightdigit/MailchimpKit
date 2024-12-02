import Foundation
import PrchModel

/** A summary of batch requests that have been made. */
public struct BatchOperations: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects representing batch calls. */
  public let batches: [Batch]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, batches: [Batch]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.batches = batches
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case batches
    case totalItems = "total_items"
  }
}
