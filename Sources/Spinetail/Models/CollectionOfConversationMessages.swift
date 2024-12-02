import Foundation
import PrchModel

/** Messages from a specific conversation. */
public struct CollectionOfConversationMessages: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** A string that identifies this conversation. */
  public let conversationId: String?

  /** An array of objects, each representing a conversation messages resources. */
  public let conversationMessages: [ConversationMessage]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, conversationId: String? = nil, conversationMessages: [ConversationMessage]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.conversationId = conversationId
    self.conversationMessages = conversationMessages
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case conversationId = "conversation_id"
    case conversationMessages = "conversation_messages"
    case totalItems = "total_items"
  }
}
