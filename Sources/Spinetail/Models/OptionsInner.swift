import Foundation
import PrchModel

public struct OptionsInner: Codable, Equatable, Content {
  /** The count of responses that selected this survey question option. */
  public let count: Int?

  /** The ID for this survey question option. */
  public let id: String?

  /** The label for this survey question option. */
  public let label: String?

  public init(count: Int? = nil, id: String? = nil, label: String? = nil) {
    self.count = count
    self.id = id
    self.label = label
  }

  public enum CodingKeys: String, CodingKey {
    case count
    case id
    case label
  }
}
