import Foundation
import PrchModel

/** A list of a member's opens activity in a specific campaign. */
public struct OpenActivity: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The unique id for the campaign. */
  public let campaignId: String?

  /** The status of the member, namely if they are subscribed, unsubscribed, deleted, non-subscribed, transactional, pending, or need reconfirmation. */
  public let contactStatus: String?

  /** Email address for a subscriber. */
  public let emailAddress: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public let emailId: String?

  /** The unique id for the list. */
  public let listId: String?

  /** The status of the list used, namely if it's deleted or disabled. */
  public let listIsActive: Bool?

  /** A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure. */
  public let mergeFields: [String: String]?

  /** An array of timestamps for each time a list member opened the campaign. If a list member opens an email multiple times, this will return a separate timestamp for each open event. */
  public let opens: [MemberActivity1]?

  /** The total number of times the this campaign was opened by the list member. */
  public let opensCount: Int?

  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public let vip: Bool?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, contactStatus: String? = nil, emailAddress: String? = nil, emailId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, mergeFields: [String: String]? = nil, opens: [MemberActivity1]? = nil, opensCount: Int? = nil, vip: Bool? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.contactStatus = contactStatus
    self.emailAddress = emailAddress
    self.emailId = emailId
    self.listId = listId
    self.listIsActive = listIsActive
    self.mergeFields = mergeFields
    self.opens = opens
    self.opensCount = opensCount
    self.vip = vip
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case contactStatus = "contact_status"
    case emailAddress = "email_address"
    case emailId = "email_id"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case mergeFields = "merge_fields"
    case opens
    case opensCount = "opens_count"
    case vip
  }
}
