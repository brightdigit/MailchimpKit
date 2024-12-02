import Foundation
import PrchModel

/** Settings for the campaign including the email subject, from name, and from email address. */
public struct CampaignSettings: Codable, Equatable, Content {
  /** Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the campaign. Defaults to `true`. */
  public let authenticate: Bool?

  /** An array of [Facebook](https://mailchimp.com/help/connect-or-disconnect-the-facebook-integration/) page ids to auto-post to. */
  public let autoFbPost: [String]?

  /** Automatically append Mailchimp's [default footer](https://mailchimp.com/help/about-campaign-footers/) to the campaign. */
  public let autoFooter: Bool?

  /** Automatically tweet a link to the [campaign archive](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) page when the campaign is sent. */
  public let autoTweet: Bool?

  /** Whether the campaign uses the drag-and-drop editor. */
  public let dragAndDrop: Bool?

  /** Allows Facebook comments on the campaign (also force-enables the Campaign Archive toolbar). Defaults to `true`. */
  public let fbComments: Bool?

  /** The 'from' name on the campaign (not an email address). */
  public let fromName: String?

  /** Automatically inline the CSS included with the campaign content. */
  public let inlineCss: Bool?

  /** The preview text for the campaign. */
  public let previewText: String?

  /** The reply-to email address for the campaign. */
  public let replyTo: String?

  /** The subject line for the campaign. */
  public let subjectLine: String?

  /** The id for the template used in this campaign. */
  public let templateId: Int?

  /** The title of the campaign. */
  public let title: String?

  public init(authenticate: Bool? = nil, autoFbPost: [String]? = nil, autoFooter: Bool? = nil, autoTweet: Bool? = nil, dragAndDrop: Bool? = nil, fbComments: Bool? = nil, fromName: String? = nil, inlineCss: Bool? = nil, previewText: String? = nil, replyTo: String? = nil, subjectLine: String? = nil, templateId: Int? = nil, title: String? = nil) {
    self.authenticate = authenticate
    self.autoFbPost = autoFbPost
    self.autoFooter = autoFooter
    self.autoTweet = autoTweet
    self.dragAndDrop = dragAndDrop
    self.fbComments = fbComments
    self.fromName = fromName
    self.inlineCss = inlineCss
    self.previewText = previewText
    self.replyTo = replyTo
    self.subjectLine = subjectLine
    self.templateId = templateId
    self.title = title
  }

  public enum CodingKeys: String, CodingKey {
    case authenticate
    case autoFbPost = "auto_fb_post"
    case autoFooter = "auto_footer"
    case autoTweet = "auto_tweet"
    case dragAndDrop = "drag_and_drop"
    case fbComments = "fb_comments"
    case fromName = "from_name"
    case inlineCss = "inline_css"
    case previewText = "preview_text"
    case replyTo = "reply_to"
    case subjectLine = "subject_line"
    case templateId = "template_id"
    case title
  }
}
