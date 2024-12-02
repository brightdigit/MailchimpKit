import Foundation
import PrchModel

/** Up to the previous 180 days of daily detailed aggregated activity stats for a specific list. Does not include AutoResponder or Automation activity. */
public struct ListActivity: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** Recent list activity. */
  public let activity: [DailyListActivity]?

  /** The unique id for the list. */
  public let listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, activity: [DailyListActivity]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.activity = activity
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case activity
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
