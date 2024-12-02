import Foundation
import PrchModel

/** Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application. */
public struct InterestCategory1: Codable, Equatable, Content {
  /** Determines how this category’s interests appear on signup forms. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case checkboxes
    case dropdown
    case radio
    case hidden
  }

  /** The text description of this category. This field appears on signup forms and is often phrased as a question. */
  public let title: String

  /** Determines how this category’s interests appear on signup forms. */
  public let type: `Type`

  /** The order that the categories are displayed in the list. Lower numbers display first. */
  public let displayOrder: Int?

  public init(title: String, type: Type, displayOrder: Int? = nil) {
    self.title = title
    self.type = type
    self.displayOrder = displayOrder
  }

  public enum CodingKeys: String, CodingKey {
    case title
    case type
    case displayOrder = "display_order"
  }
}
