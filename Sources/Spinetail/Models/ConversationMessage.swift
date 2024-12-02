import Foundation
import PrchModel

/** An individual message in a conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account. */
public struct ConversationMessage: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** A string that identifies this message's conversation */
  public let conversationId: String?

  /** A label representing the email of the sender of this message */
  public let fromEmail: String?

  /** A label representing the sender of this message */
  public let fromLabel: String?

  /** A string that uniquely identifies this message */
  public let id: String?

  /** The list's web ID */
  public let listId: Int?

  /** The plain-text content of the message */
  public let message: String?

  /** Whether this message has been marked as read */
  public let read: Bool?

  /** The subject of this message */
  public let subject: String?

  /** The date and time the message was either sent or received in ISO 8601 format. */
  public let timestamp: MailchimpOptionalDate

  public init(links: [ResourceLink]? = nil, conversationId: String? = nil, fromEmail: String? = nil, fromLabel: String? = nil, id: String? = nil, listId: Int? = nil, message: String? = nil, read: Bool? = nil, subject: String? = nil, timestamp: MailchimpOptionalDate) {
    self.links = links
    self.conversationId = conversationId
    self.fromEmail = fromEmail
    self.fromLabel = fromLabel
    self.id = id
    self.listId = listId
    self.message = message
    self.read = read
    self.subject = subject
    self.timestamp = timestamp
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case conversationId = "conversation_id"
    case fromEmail = "from_email"
    case fromLabel = "from_label"
    case id
    case listId = "list_id"
    case message
    case read
    case subject
    case timestamp
  }
}
