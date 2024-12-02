import Foundation
import PrchModel

/** A list of tags assigned to a list member. */
public struct CollectionOfTags: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** A list of tags assigned to the list member. */
  public let tags: [TagsInner2]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, tags: [TagsInner2]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.tags = tags
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case tags
    case totalItems = "total_items"
  }
}
