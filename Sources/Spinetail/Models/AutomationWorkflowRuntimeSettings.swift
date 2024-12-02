import Foundation
import PrchModel

/** A workflow's runtime settings for an Automation. */
public struct AutomationWorkflowRuntimeSettings: Codable, Equatable, Content {
  /** The days an Automation workflow can send. */
  public enum Days: String, Codable, Equatable, CaseIterable {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
  }

  /** The days an Automation workflow can send. */
  public let days: [Days]?

  public let hours: Hours?

  public init(days: [Days]? = nil, hours: Hours? = nil) {
    self.days = days
    self.hours = hours
  }

  public enum CodingKeys: String, CodingKey {
    case days
    case hours
  }
}
