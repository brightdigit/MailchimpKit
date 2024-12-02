import Foundation
import PrchModel

/** Details of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to 'report spam' in their email program. */
public struct AbuseComplaint1: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The campaign id for the abuse report */
  public let campaignId: String?

  /** Date for the abuse report */
  public let date: MailchimpOptionalDate

  /** Email address for a subscriber. */
  public let emailAddress: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public let emailId: String?

  /** The id for the abuse report */
  public let id: Int?

  /** The unique id of the list for the abuse report. */
  public let listId: String?

  /** The status of the list used, namely if it's deleted or disabled. */
  public let listIsActive: Bool?

  /** A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure. */
  public let mergeFields: [String: String]?

  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public let vip: Bool?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, date: MailchimpOptionalDate, emailAddress: String? = nil, emailId: String? = nil, id: Int? = nil, listId: String? = nil, listIsActive: Bool? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.date = date
    self.emailAddress = emailAddress
    self.emailId = emailId
    self.id = id
    self.listId = listId
    self.listIsActive = listIsActive
    self.mergeFields = mergeFields
    self.vip = vip
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case date
    case emailAddress = "email_address"
    case emailId = "email_id"
    case id
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case mergeFields = "merge_fields"
    case vip
  }
}
