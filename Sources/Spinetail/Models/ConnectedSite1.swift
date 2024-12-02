import Foundation
import PrchModel

/** Information about a specific connected site. */
public struct ConnectedSite1: Codable, Equatable, Content {
  /** The connected site domain. */
  public let domain: String

  /** The unique identifier for the site. */
  public let foreignId: String

  public init(domain: String, foreignId: String) {
    self.domain = domain
    self.foreignId = foreignId
  }

  public enum CodingKeys: String, CodingKey {
    case domain
    case foreignId = "foreign_id"
  }
}
