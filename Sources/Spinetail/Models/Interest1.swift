import Foundation
import PrchModel

/** Assign subscribers to interests to group them together. Interests are referred to as 'group names' in the Mailchimp application. */
public struct Interest1: Codable, Equatable, Content {
  /** The name of the interest. This can be shown publicly on a subscription form. */
  public let name: String

  /** The display order for interests. */
  public let displayOrder: Int?

  public init(name: String, displayOrder: Int? = nil) {
    self.name = name
    self.displayOrder = displayOrder
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case displayOrder = "display_order"
  }
}
