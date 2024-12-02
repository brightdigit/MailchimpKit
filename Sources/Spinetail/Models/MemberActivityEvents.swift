import Foundation
import PrchModel

/** The last 50 member events for a list. */
public struct MemberActivityEvents: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a member event. */
  public let activity: [MemberActivity]?

  /** As Mailchimp evolves beyond email, you may eventually have contacts without email addresses. While the `email_id` is the MD5 hash of their email address, this `contact_id` is agnostic of contact’s inclusion of an email address. */
  public let contactId: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public let emailId: String?

  /** The list id. */
  public let listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, activity: [MemberActivity]? = nil, contactId: String? = nil, emailId: String? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.activity = activity
    self.contactId = contactId
    self.emailId = emailId
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case activity
    case contactId = "contact_id"
    case emailId = "email_id"
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
