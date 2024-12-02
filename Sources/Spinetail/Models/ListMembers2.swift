import Foundation
import PrchModel

/** Manage members of a specific Mailchimp list, including currently subscribed, unsubscribed, and bounced members. */
public struct ListMembers2: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The list id. */
  public let listId: String?

  /** An array of objects, each representing a specific list member. */
  public let members: [ListMembers2]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, listId: String? = nil, members: [ListMembers2]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.members = members
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case members
    case totalItems = "total_items"
  }
}
