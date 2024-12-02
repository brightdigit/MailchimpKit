import Foundation
import PrchModel

/** The hours an Automation workflow can send. */
public struct Hours: Codable, Equatable, Content {
  /** When to send the Automation email. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case sendAsap = "send_asap"
    case sendBetween = "send_between"
    case sendAt = "send_at"
  }

  /** When to send the Automation email. */
  public let type: `Type`

  public init(type: Type) {
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case type
  }
}
