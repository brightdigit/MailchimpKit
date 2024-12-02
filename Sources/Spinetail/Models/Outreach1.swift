import Foundation
import PrchModel

/** The outreach associated with this order. For example, an email campaign or Facebook ad. */
public struct Outreach1: Codable, Equatable, Content {
  /** A unique identifier for the outreach. Can be an email campaign ID. */
  public let id: String?

  public init(id: String? = nil) {
    self.id = id
  }

  public enum CodingKeys: String, CodingKey {
    case id
  }
}
