import Foundation
import PrchModel

/** Manage webhooks for batch requests. */
public struct BatchWebhooksModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  /** An array of objects, each representing a Batch Webhook. */
  public let webhooks: [BatchWebhook]?

  public init(links: [ResourceLink]? = nil, totalItems: Int? = nil, webhooks: [BatchWebhook]? = nil) {
    self.links = links
    self.totalItems = totalItems
    self.webhooks = webhooks
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case totalItems = "total_items"
    case webhooks
  }
}
