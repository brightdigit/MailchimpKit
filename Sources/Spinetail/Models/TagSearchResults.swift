import Foundation
import PrchModel

/** A list of tags matching the input query. */
public struct TagSearchResults: Codable, Equatable, Content {
  /** A list of matching tags. */
  public let tags: [TagsInner1]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(tags: [TagsInner1]? = nil, totalItems: Int? = nil) {
    self.tags = tags
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case tags
    case totalItems = "total_items"
  }
}
