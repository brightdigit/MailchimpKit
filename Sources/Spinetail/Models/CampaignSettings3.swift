import Foundation
import PrchModel

/** The settings for your campaign, including subject, from name, reply-to address, and more. */
public struct CampaignSettings3: Codable, Equatable, Content {
  /** Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the campaign. Defaults to `true`. */
  public let authenticate: Bool?

  /** An array of [Facebook](https://mailchimp.com/help/connect-or-disconnect-the-facebook-integration/) page ids to auto-post to. */
  public let autoFbPost: [String]?

  /** Automatically append Mailchimp's [default footer](https://mailchimp.com/help/about-campaign-footers/) to the campaign. */
  public let autoFooter: Bool?

  /** Automatically tweet a link to the [campaign archive](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) page when the campaign is sent. */
  public let autoTweet: Bool?

  /** Allows Facebook comments on the campaign (also force-enables the Campaign Archive toolbar). Defaults to `true`. */
  public let fbComments: Bool?

  /** If the campaign is listed in a folder, the id for that folder. */
  public let folderId: String?

  /** The 'from' name on the campaign (not an email address). */
  public let fromName: String?

  /** Automatically inline the CSS included with the campaign content. */
  public let inlineCss: Bool?

  /** The preview text for the campaign. */
  public let previewText: String?

  /** The reply-to email address for the campaign. Note: while this field is not required for campaign creation, it is required for sending. */
  public let replyTo: String?

  /** The subject line for the campaign. */
  public let subjectLine: String?

  /** The id of the template to use. */
  public let templateId: Int?

  /** The title of the campaign. */
  public let title: String?

  /** The campaign's custom 'To' name. Typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/). */
  public let toName: String?

  /** Use Mailchimp Conversation feature to manage out-of-office replies. */
  public let useConversation: Bool?

  public init(authenticate: Bool? = nil, autoFbPost: [String]? = nil, autoFooter: Bool? = nil, autoTweet: Bool? = nil, fbComments: Bool? = nil, folderId: String? = nil, fromName: String? = nil, inlineCss: Bool? = nil, previewText: String? = nil, replyTo: String? = nil, subjectLine: String? = nil, templateId: Int? = nil, title: String? = nil, toName: String? = nil, useConversation: Bool? = nil) {
    self.authenticate = authenticate
    self.autoFbPost = autoFbPost
    self.autoFooter = autoFooter
    self.autoTweet = autoTweet
    self.fbComments = fbComments
    self.folderId = folderId
    self.fromName = fromName
    self.inlineCss = inlineCss
    self.previewText = previewText
    self.replyTo = replyTo
    self.subjectLine = subjectLine
    self.templateId = templateId
    self.title = title
    self.toName = toName
    self.useConversation = useConversation
  }

  public enum CodingKeys: String, CodingKey {
    case authenticate
    case autoFbPost = "auto_fb_post"
    case autoFooter = "auto_footer"
    case autoTweet = "auto_tweet"
    case fbComments = "fb_comments"
    case folderId = "folder_id"
    case fromName = "from_name"
    case inlineCss = "inline_css"
    case previewText = "preview_text"
    case replyTo = "reply_to"
    case subjectLine = "subject_line"
    case templateId = "template_id"
    case title
    case toName = "to_name"
    case useConversation = "use_conversation"
  }
}
