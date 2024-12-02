import Foundation
import PrchModel

/** A collection of this account's tracked conversations. */
public struct TrackedConversations: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** A list of conversations. */
  public let conversations: [Conversation]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, conversations: [Conversation]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.conversations = conversations
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case conversations
    case totalItems = "total_items"
  }
}
