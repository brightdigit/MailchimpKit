import Foundation
import PrchModel

/** Assign subscribers to interests to group them together. Interests are referred to as 'group names' in the Mailchimp application. */
public struct Interest: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The id for the interest category. */
  public let categoryId: String?

  /** The display order for interests. */
  public let displayOrder: Int?

  /** The ID for the interest. */
  public let id: String?

  /** The ID for the list that this interest belongs to. */
  public let listId: String?

  /** The name of the interest. This can be shown publicly on a subscription form. */
  public let name: String?

  /** The number of subscribers associated with this interest. */
  public let subscriberCount: String?

  public init(links: [ResourceLink]? = nil, categoryId: String? = nil, displayOrder: Int? = nil, id: String? = nil, listId: String? = nil, name: String? = nil, subscriberCount: String? = nil) {
    self.links = links
    self.categoryId = categoryId
    self.displayOrder = displayOrder
    self.id = id
    self.listId = listId
    self.name = name
    self.subscriberCount = subscriberCount
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case categoryId = "category_id"
    case displayOrder = "display_order"
    case id
    case listId = "list_id"
    case name
    case subscriberCount = "subscriber_count"
  }
}
