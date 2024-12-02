import Foundation
import PrchModel

public struct CombinationsInner: Codable, Equatable, Content {
  /** The index of `variate_settings.contents` used. */
  public let contentDescription: Int?

  /** The index of `variate_settings.from_names` used. */
  public let fromName: Int?

  /** Unique ID for the combination. */
  public let id: String?

  /** The number of recipients for this combination. */
  public let recipients: Int?

  /** The index of `variate_settings.reply_to_addresses` used. */
  public let replyTo: Int?

  /** The index of `variate_settings.send_times` used. */
  public let sendTime: Int?

  /** The index of `variate_settings.subject_lines` used. */
  public let subjectLine: Int?

  public init(contentDescription: Int? = nil, fromName: Int? = nil, id: String? = nil, recipients: Int? = nil, replyTo: Int? = nil, sendTime: Int? = nil, subjectLine: Int? = nil) {
    self.contentDescription = contentDescription
    self.fromName = fromName
    self.id = id
    self.recipients = recipients
    self.replyTo = replyTo
    self.sendTime = sendTime
    self.subjectLine = subjectLine
  }

  public enum CodingKeys: String, CodingKey {
    case contentDescription = "content_description"
    case fromName = "from_name"
    case id
    case recipients
    case replyTo = "reply_to"
    case sendTime = "send_time"
    case subjectLine = "subject_line"
  }
}
