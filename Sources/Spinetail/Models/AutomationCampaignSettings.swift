import Foundation
import PrchModel

/** The settings for the Automation workflow. */
public struct AutomationCampaignSettings: Codable, Equatable, Content {
  /** Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the Automation. Defaults to `true`. */
  public let authenticate: Bool?

  /** Whether to automatically append Mailchimp's [default footer](https://mailchimp.com/help/about-campaign-footers/) to the Automation. */
  public let autoFooter: Bool?

  /** The 'from' name for the Automation (not an email address). */
  public let fromName: String?

  /** Whether to automatically inline the CSS included with the Automation content. */
  public let inlineCss: Bool?

  /** The reply-to email address for the Automation. */
  public let replyTo: String?

  /** The title of the Automation. */
  public let title: String?

  /** The Automation's custom 'To' name, typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/). */
  public let toName: String?

  /** Whether to use Mailchimp Conversation feature to manage replies */
  public let useConversation: Bool?

  public init(authenticate: Bool? = nil, autoFooter: Bool? = nil, fromName: String? = nil, inlineCss: Bool? = nil, replyTo: String? = nil, title: String? = nil, toName: String? = nil, useConversation: Bool? = nil) {
    self.authenticate = authenticate
    self.autoFooter = autoFooter
    self.fromName = fromName
    self.inlineCss = inlineCss
    self.replyTo = replyTo
    self.title = title
    self.toName = toName
    self.useConversation = useConversation
  }

  public enum CodingKeys: String, CodingKey {
    case authenticate
    case autoFooter = "auto_footer"
    case fromName = "from_name"
    case inlineCss = "inline_css"
    case replyTo = "reply_to"
    case title
    case toName = "to_name"
    case useConversation = "use_conversation"
  }
}
