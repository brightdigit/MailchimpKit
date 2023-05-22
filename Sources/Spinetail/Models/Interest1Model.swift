import Foundation

import PrchModel
/** Assign subscribers to interests to group them together. Interests are referred to as 'group names' in the Mailchimp application. */
public struct Interest1Model: Codable, Equatable, Content {
  /** The name of the interest. This can be shown publicly on a subscription form. */
  public var name: String

  /** The display order for interests. */
  public var displayOrder: Int?

  public init(name: String, displayOrder: Int? = nil) {
    self.name = name
    self.displayOrder = displayOrder
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case name
    case displayOrder = "display_order"
  }
}
