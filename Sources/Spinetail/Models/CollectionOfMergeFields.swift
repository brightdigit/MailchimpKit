import Foundation
import PrchModel

/** The [merge fields](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience. */
public struct CollectionOfMergeFields: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The list id. */
  public let listId: String?

  /** An array of objects, each representing a merge field resource. */
  public let mergeFields: [MergeField]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, listId: String? = nil, mergeFields: [MergeField]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.mergeFields = mergeFields
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case mergeFields = "merge_fields"
    case totalItems = "total_items"
  }
}
