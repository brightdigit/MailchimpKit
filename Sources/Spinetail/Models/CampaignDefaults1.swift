import Foundation
import PrchModel

/** [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list. */
public struct CampaignDefaults1: Codable, Equatable, Content {
  /** The default from email for campaigns sent to this list. */
  public let fromEmail: String

  /** The default from name for campaigns sent to this list. */
  public let fromName: String

  /** The default language for this lists's forms. */
  public let language: String

  /** The default subject line for campaigns sent to this list. */
  public let subject: String

  public init(fromEmail: String, fromName: String, language: String, subject: String) {
    self.fromEmail = fromEmail
    self.fromName = fromName
    self.language = language
    self.subject = subject
  }

  public enum CodingKeys: String, CodingKey {
    case fromEmail = "from_email"
    case fromName = "from_name"
    case language
    case subject
  }
}
