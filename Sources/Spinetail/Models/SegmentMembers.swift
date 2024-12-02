import Foundation
import PrchModel

/** View members in a specific list segment. */
public struct SegmentMembers: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a specific list member. */
  public let members: [ListMembers1]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, members: [ListMembers1]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.members = members
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case members
    case totalItems = "total_items"
  }
}
