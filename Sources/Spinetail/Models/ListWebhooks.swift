import Foundation
import PrchModel

/** Manage webhooks for a specific list. */
public struct ListWebhooks: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The list id. */
  public let listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  /** An array of objects, each representing a specific list member. */
  public let webhooks: [ListWebhooks]?

  public init(links: [ResourceLink]? = nil, listId: String? = nil, totalItems: Int? = nil, webhooks: [ListWebhooks]? = nil) {
    self.links = links
    self.listId = listId
    self.totalItems = totalItems
    self.webhooks = webhooks
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case totalItems = "total_items"
    case webhooks
  }
}
