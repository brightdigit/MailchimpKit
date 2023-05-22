import Foundation

import PrchModel
/** A summary of batch requests that have been made. */
public struct BatchOperationsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects representing batch calls. */
  public var batches: [BatchModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, batches: [BatchModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.batches = batches
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case batches
    case totalItems = "total_items"
  }
}
