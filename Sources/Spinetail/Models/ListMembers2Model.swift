import Foundation

import typealias PrchModel.Content

/** Manage members of a specific Mailchimp list, including currently subscribed, unsubscribed, and bounced members. */
public struct ListMembers2Model: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The list id. */
  public var listId: String?

  /** An array of objects, each representing a specific list member. */
  public var members: [ListMembers2Model]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** Email address for a subscriber. */
  public var emailAddress: String?

  /** The list member's email client. */
  public var emailClient: String?

  /** Type of email this member asked to get ('html' or 'text'). */
  public var emailType: String?

  /** The contact's full name. */
  public var fullName: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public var id: String?

  /** The key of this object's properties is the ID of the interest in question. */
  public var interests: [String: Bool]?

  /** The IP address the subscriber used to confirm their opt-in status. */
  public var ipOpt: String?

  /** IP address the subscriber signed up from. */
  public var ipSignup: String?

  /** If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/). */
  public var language: String?

  /** The date and time the member's info was last changed in ISO 8601 format. */
  public var lastChanged: MailchimpOptionalDate = .init()

  /** Star rating for this member, between 1 and 5. */
  public var memberRating: Int?

  /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"} */
  // public var mergeFields: [String: AnyCodable]?

  /** The source from which the subscriber was added to this list. */
  public var source: String?

  /** Returns up to 50 tags applied to this member. To retrieve all tags see [Member Tags](https://mailchimp.com/developer/marketing/api/list-member-tags/). */
  public var tags: [TagsInnerModel]?

  /** The number of tags applied to this member. */
  public var tagsCount: Int?

  /** The date and time the subscribe confirmed their opt-in status in ISO 8601 format. */
  public var timestampOpt: MailchimpOptionalDate = .init()

  /** The date and time the subscriber signed up for the list in ISO 8601 format. */
  public var timestampSignup: MailchimpOptionalDate = .init()

  /** An identifier for the address across all of Mailchimp. */
  public var uniqueEmailId: String?

  /** A subscriber's reason for unsubscribing. */
  public var unsubscribeReason: String?

  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public var vip: Bool?

  public init(links: [ResourceLinkModel]? = nil, listId: String? = nil, members: [ListMembers2Model]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.members = members
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case members
    case totalItems = "total_items"
    case id
    case emailAddress = "email_address"
    case emailClient = "email_client"
    case emailType = "email_type"
    case fullName = "full_name"
    case interests
    case ipOpt = "ip_opt"
    case ipSignup = "ip_signup"
    case language
    case lastChanged = "last_changed"
    case memberRating = "member_rating"
    case source
    case tags
    case tagsCount = "tags_count"
    case timestampSignup = "timestamp_signup"
    case timestampOpt = "timestamp_opt"
    case uniqueEmailId = "unique_email_id"
    case unsubscribeReason = "unsubscribe_reason"
    case vip
  }
}
