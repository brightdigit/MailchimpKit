import Foundation

import PrchModel
public struct OptionsInnerModel: Codable, Equatable, Content {
  /** The count of responses that selected this survey question option. */
  public var count: Int?

  /** The ID for this survey question option. */
  public var id: String?

  /** The label for this survey question option. */
  public var label: String?

  public init(count: Int? = nil, id: String? = nil, label: String? = nil) {
    self.count = count
    self.id = id
    self.label = label
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case count
    case id
    case label
  }
}
