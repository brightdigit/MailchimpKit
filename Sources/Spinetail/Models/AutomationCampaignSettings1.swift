import Foundation
import PrchModel

/** The settings for the Automation workflow. */
public struct AutomationCampaignSettings1: Codable, Equatable, Content {
  /** The 'from' name for the Automation (not an email address). */
  public let fromName: String?

  /** The reply-to email address for the Automation. */
  public let replyTo: String?

  public init(fromName: String? = nil, replyTo: String? = nil) {
    self.fromName = fromName
    self.replyTo = replyTo
  }

  public enum CodingKeys: String, CodingKey {
    case fromName = "from_name"
    case replyTo = "reply_to"
  }
}
