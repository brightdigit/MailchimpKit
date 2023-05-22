import Foundation

import PrchModel
/** Information about a specific connected site. */
public struct ConnectedSite1Model: Codable, Equatable, Content {
  /** The connected site domain. */
  public var domain: String

  /** The unique identifier for the site. */
  public var foreignId: String

  public init(domain: String, foreignId: String) {
    self.domain = domain
    self.foreignId = foreignId
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case domain
    case foreignId = "foreign_id"
  }
}
