import Foundation
import PrchModel

/** Information about a specific list. */
public struct SubscriberList: Codable, Equatable, Content {
  /** Legacy - visibility settings are no longer used */
  public enum Visibility: String, Codable, Equatable, CaseIterable {
    case pub
    case prv
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The list's [Email Beamer](https://mailchimp.com/help/use-email-beamer-to-create-a-campaign/) address. */
  public let beamerAddress: String?

  public let campaignDefaults: CampaignDefaults?

  public let contact: ListContact?

  /** The date and time that this list was created in ISO 8601 format. */
  public let dateCreated: MailchimpOptionalDate

  /** Whether or not to require the subscriber to confirm subscription via email. */
  public let doubleOptin: Bool?

  /** Whether the list supports [multiple formats for emails](https://mailchimp.com/help/change-audience-name-defaults/). When set to `true`, subscribers can choose whether they want to receive HTML or plain-text emails. When set to `false`, subscribers will receive HTML emails, with a plain-text alternative backup. */
  public let emailTypeOption: Bool?

  /** Whether or not this list has a welcome automation connected. Welcome AutomationsModel: welcomeSeries, singleWelcome, emailFollowup. */
  public let hasWelcome: Bool?

  /** A string that uniquely identifies this list. */
  public let id: String?

  /** An auto-generated activity score for the list (0-5). */
  public let listRating: Int?

  /** Whether or not the list has marketing permissions (eg. GDPR) enabled. */
  public let marketingPermissions: Bool?

  /** Any list-specific modules installed for this list. */
  public let modules: [String]?

  /** The name of the list. */
  public let name: String?

  /** The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
  public let notifyOnSubscribe: String?

  /** The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
  public let notifyOnUnsubscribe: String?

  /** The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list. */
  public let permissionReminder: String?

  public let stats: Statistics?

  /** The full version of this list's subscribe form (host will vary). */
  public let subscribeURLLong: String?

  /** Our [url shortened](https://mailchimp.com/help/share-your-signup-form/) version of this list's subscribe form. */
  public let subscribeURLShort: String?

  /** Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default. */
  public let useArchiveBar: Bool?

  /** Legacy - visibility settings are no longer used */
  public let visibility: Visibility?

  /** The ID used in the Mailchimp web application. View this list in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/members/?id={web_id}`. */
  public let webId: Int?

  public init(links: [ResourceLink]? = nil, beamerAddress: String? = nil, campaignDefaults: CampaignDefaults? = nil, contact: ListContact? = nil, dateCreated: MailchimpOptionalDate, doubleOptin: Bool? = nil, emailTypeOption: Bool? = nil, hasWelcome: Bool? = nil, id: String? = nil, listRating: Int? = nil, marketingPermissions: Bool? = nil, modules: [String]? = nil, name: String? = nil, notifyOnSubscribe: String? = nil, notifyOnUnsubscribe: String? = nil, permissionReminder: String? = nil, stats: Statistics? = nil, subscribeURLLong: String? = nil, subscribeURLShort: String? = nil, useArchiveBar: Bool? = nil, visibility: Visibility? = nil, webId: Int? = nil) {
    self.links = links
    self.beamerAddress = beamerAddress
    self.campaignDefaults = campaignDefaults
    self.contact = contact
    self.dateCreated = dateCreated
    self.doubleOptin = doubleOptin
    self.emailTypeOption = emailTypeOption
    self.hasWelcome = hasWelcome
    self.id = id
    self.listRating = listRating
    self.marketingPermissions = marketingPermissions
    self.modules = modules
    self.name = name
    self.notifyOnSubscribe = notifyOnSubscribe
    self.notifyOnUnsubscribe = notifyOnUnsubscribe
    self.permissionReminder = permissionReminder
    self.stats = stats
    self.subscribeURLLong = subscribeURLLong
    self.subscribeURLShort = subscribeURLShort
    self.useArchiveBar = useArchiveBar
    self.visibility = visibility
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case beamerAddress = "beamer_address"
    case campaignDefaults = "campaign_defaults"
    case contact
    case dateCreated = "date_created"
    case doubleOptin = "double_optin"
    case emailTypeOption = "email_type_option"
    case hasWelcome = "has_welcome"
    case id
    case listRating = "list_rating"
    case marketingPermissions = "marketing_permissions"
    case modules
    case name
    case notifyOnSubscribe = "notify_on_subscribe"
    case notifyOnUnsubscribe = "notify_on_unsubscribe"
    case permissionReminder = "permission_reminder"
    case stats
    case subscribeURLLong = "subscribe_url_long"
    case subscribeURLShort = "subscribe_url_short"
    case useArchiveBar = "use_archive_bar"
    case visibility
    case webId = "web_id"
  }
}
