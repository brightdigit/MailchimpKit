import Foundation
import PrchModel

/** The most recent message in the conversation. */
public struct LastMessage: Codable, Equatable, Content {
  /** A label representing the email of the sender of this message. */
  public let fromEmail: String?

  /** A label representing the sender of this message. */
  public let fromLabel: String?

  /** The plain-text content of the message. */
  public let message: String?

  /** Whether this message has been marked as read. */
  public let read: Bool?

  /** The subject of this message. */
  public let subject: String?

  /** The date and time the message was either sent or received in ISO 8601 format. */
  public let timestamp: MailchimpOptionalDate

  public init(fromEmail: String? = nil, fromLabel: String? = nil, message: String? = nil, read: Bool? = nil, subject: String? = nil, timestamp: MailchimpOptionalDate) {
    self.fromEmail = fromEmail
    self.fromLabel = fromLabel
    self.message = message
    self.read = read
    self.subject = subject
    self.timestamp = timestamp
  }

  public enum CodingKeys: String, CodingKey {
    case fromEmail = "from_email"
    case fromLabel = "from_label"
    case message
    case read
    case subject
    case timestamp
  }
}
