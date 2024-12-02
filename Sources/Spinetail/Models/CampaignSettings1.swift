import Foundation
import PrchModel

/** Settings for the campaign including the email subject, from name, and from email address. */
public struct CampaignSettings1: Codable, Equatable, Content {
  /** The 'from' name for the Automation (not an email address). */
  public let fromName: String?

  /** The preview text for the campaign. */
  public let previewText: String?

  /** The reply-to email address for the Automation. */
  public let replyTo: String?

  /** The subject line for the campaign. */
  public let subjectLine: String?

  /** The title of the Automation. */
  public let title: String?

  public init(fromName: String? = nil, previewText: String? = nil, replyTo: String? = nil, subjectLine: String? = nil, title: String? = nil) {
    self.fromName = fromName
    self.previewText = previewText
    self.replyTo = replyTo
    self.subjectLine = subjectLine
    self.title = title
  }

  public enum CodingKeys: String, CodingKey {
    case fromName = "from_name"
    case previewText = "preview_text"
    case replyTo = "reply_to"
    case subjectLine = "subject_line"
    case title
  }
}
