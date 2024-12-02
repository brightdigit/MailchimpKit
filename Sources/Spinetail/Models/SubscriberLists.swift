import Foundation
import PrchModel

/** A collection of subscriber lists for this account. Lists contain subscribers who have opted-in to receive correspondence from you or your organization. */
public struct SubscriberLists: Codable, Equatable, Content {
  /** An array of objects, each representing a list. */
  public let lists: [SubscriberList]

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public let constraints: CollectionAuthorization?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(lists: [SubscriberList], links: [ResourceLink]? = nil, constraints: CollectionAuthorization? = nil, totalItems: Int? = nil) {
    self.lists = lists
    self.links = links
    self.constraints = constraints
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case lists
    case links = "_links"
    case constraints
    case totalItems = "total_items"
  }
}
