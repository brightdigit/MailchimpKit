import Foundation

import PrchModel
/** Information about a specific list. */
public struct SubscriberList2Model: Codable, Equatable, Content {
  public var campaignDefaults: CampaignDefaults1Model

  public var contact: ListContact2Model

  /** Whether the list supports [multiple formats for emails](https://mailchimp.com/help/change-audience-name-defaults/). When set to `true`, subscribers can choose whether they want to receive HTML or plain-text emails. When set to `false`, subscribers will receive HTML emails, with a plain-text alternative backup. */
  public var emailTypeOption: Bool

  /** The name of the list. */
  public var name: String

  /** The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list. */
  public var permissionReminder: String

  /** Whether or not to require the subscriber to confirm subscription via email. */
  public var doubleOptin: Bool?

  /** Whether or not the list has marketing permissions (eg. GDPR) enabled. */
  public var marketingPermissions: Bool?

  /** The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
  public var notifyOnSubscribe: String?

  /** The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
  public var notifyOnUnsubscribe: String?

  /** Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default. */
  public var useArchiveBar: Bool?

  public init(campaignDefaults: CampaignDefaults1Model, contact: ListContact2Model, emailTypeOption: Bool, name: String, permissionReminder: String, doubleOptin: Bool? = nil, marketingPermissions: Bool? = nil, notifyOnSubscribe: String? = nil, notifyOnUnsubscribe: String? = nil, useArchiveBar: Bool? = nil) {
    self.campaignDefaults = campaignDefaults
    self.contact = contact
    self.emailTypeOption = emailTypeOption
    self.name = name
    self.permissionReminder = permissionReminder
    self.doubleOptin = doubleOptin
    self.marketingPermissions = marketingPermissions
    self.notifyOnSubscribe = notifyOnSubscribe
    self.notifyOnUnsubscribe = notifyOnUnsubscribe
    self.useArchiveBar = useArchiveBar
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case campaignDefaults = "campaign_defaults"
    case contact
    case emailTypeOption = "email_type_option"
    case name
    case permissionReminder = "permission_reminder"
    case doubleOptin = "double_optin"
    case marketingPermissions = "marketing_permissions"
    case notifyOnSubscribe = "notify_on_subscribe"
    case notifyOnUnsubscribe = "notify_on_unsubscribe"
    case useArchiveBar = "use_archive_bar"
  }
}
