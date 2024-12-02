import Foundation
import PrchModel

/** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
public struct ListMembers: Codable, Equatable, Content {
  /** Subscriber's current status. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case subscribed
    case unsubscribed
    case cleaned
    case pending
    case transactional
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** Email address for a subscriber. */
  public let emailAddress: String?

  /** The list member's email client. */
  public let emailClient: String?

  /** Type of email this member asked to get ('html' or 'text'). */
  public let emailType: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public let id: String?

  /** The key of this object's properties is the ID of the interest in question. */
  public let interests: [String: Bool]?

  /** The IP address the subscriber used to confirm their opt-in status. */
  public let ipOpt: String?

  /** IP address the subscriber signed up from. */
  public let ipSignup: String?

  /** If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/). */
  public let language: String?

  /** The date and time the member's info was last changed in ISO 8601 format. */
  public let lastChanged: MailchimpOptionalDate

  public let lastNote: Notes?

  /** The list id. */
  public let listId: String?

  public let location: Location1?

  /** Star rating for this member, between 1 and 5. */
  public let memberRating: Int?

  /** An individual merge var and value for a member. */
  public let mergeFields: [String: String]?

  public let stats: SubscriberStats?

  /** Subscriber's current status. */
  public let status: Status?

  /** The tags applied to this member. */
  public let tags: [TagsInner]?

  /** The number of tags applied to this member. */
  public let tagsCount: Int?

  /** The date and time the subscriber confirmed their opt-in status in ISO 8601 format. */
  public let timestampOpt: MailchimpOptionalDate

  /** The date and time the subscriber signed up for the list in ISO 8601 format. */
  public let timestampSignup: MailchimpOptionalDate

  /** An identifier for the address across all of Mailchimp. */
  public let uniqueEmailId: String?

  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public let vip: Bool?

  public init(links: [ResourceLink]? = nil, emailAddress: String? = nil, emailClient: String? = nil, emailType: String? = nil, id: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, lastChanged: MailchimpOptionalDate, lastNote: Notes? = nil, listId: String? = nil, location: Location1? = nil, memberRating: Int? = nil, mergeFields: [String: String]? = nil, stats: SubscriberStats? = nil, status: Status? = nil, tags: [TagsInner]? = nil, tagsCount: Int? = nil, timestampOpt: MailchimpOptionalDate, timestampSignup: MailchimpOptionalDate, uniqueEmailId: String? = nil, vip: Bool? = nil) {
    self.links = links
    self.emailAddress = emailAddress
    self.emailClient = emailClient
    self.emailType = emailType
    self.id = id
    self.interests = interests
    self.ipOpt = ipOpt
    self.ipSignup = ipSignup
    self.language = language
    self.lastChanged = lastChanged
    self.lastNote = lastNote
    self.listId = listId
    self.location = location
    self.memberRating = memberRating
    self.mergeFields = mergeFields
    self.stats = stats
    self.status = status
    self.tags = tags
    self.tagsCount = tagsCount
    self.timestampOpt = timestampOpt
    self.timestampSignup = timestampSignup
    self.uniqueEmailId = uniqueEmailId
    self.vip = vip
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case emailAddress = "email_address"
    case emailClient = "email_client"
    case emailType = "email_type"
    case id
    case interests
    case ipOpt = "ip_opt"
    case ipSignup = "ip_signup"
    case language
    case lastChanged = "last_changed"
    case lastNote = "last_note"
    case listId = "list_id"
    case location
    case memberRating = "member_rating"
    case mergeFields = "merge_fields"
    case stats
    case status
    case tags
    case tagsCount = "tags_count"
    case timestampOpt = "timestamp_opt"
    case timestampSignup = "timestamp_signup"
    case uniqueEmailId = "unique_email_id"
    case vip
  }
}
