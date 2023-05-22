import Foundation

import PrchModel
/** [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list. */
public struct CampaignDefaultsModel: Codable, Equatable, Content {
  /** The default from email for campaigns sent to this list. */
  public var fromEmail: String?

  /** The default from name for campaigns sent to this list. */
  public var fromName: String?

  /** The default language for this lists's forms. */
  public var language: String?

  /** The default subject line for campaigns sent to this list. */
  public var subject: String?

  public init(fromEmail: String? = nil, fromName: String? = nil, language: String? = nil, subject: String? = nil) {
    self.fromEmail = fromEmail
    self.fromName = fromName
    self.language = language
    self.subject = subject
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case fromEmail = "from_email"
    case fromName = "from_name"
    case language
    case subject
  }
}
