import Foundation
import PrchModel

/** Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application. */
public struct InterestCategory: Codable, Equatable, Content {
  /** Determines how this category’s interests appear on signup forms. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case checkboxes
    case dropdown
    case radio
    case hidden
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The order that the categories are displayed in the list. Lower numbers display first. */
  public let displayOrder: Int?

  /** The id for the interest category. */
  public let id: String?

  /** The unique list id for the category. */
  public let listId: String?

  /** The text description of this category. This field appears on signup forms and is often phrased as a question. */
  public let title: String?

  /** Determines how this category’s interests appear on signup forms. */
  public let type: `Type`?

  public init(links: [ResourceLink]? = nil, displayOrder: Int? = nil, id: String? = nil, listId: String? = nil, title: String? = nil, type: Type? = nil) {
    self.links = links
    self.displayOrder = displayOrder
    self.id = id
    self.listId = listId
    self.title = title
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case displayOrder = "display_order"
    case id
    case listId = "list_id"
    case title
    case type
  }
}
