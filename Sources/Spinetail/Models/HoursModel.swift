import Foundation

import PrchModel
/** The hours an Automation workflow can send. */
public struct HoursModel: Codable, Equatable, Content {
  /** When to send the Automation email. */
  public enum Automations`Type`: String, Codable, Equatable, CaseIterable {
    case sendAsap = "send_asap"
    case sendBetween = "send_between"
    case sendAt = "send_at"
  }

  /** When to send the Automation email. */
  public var type: `Type`

  public init(type: Type) {
    self.type = type
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case type
  }
}
