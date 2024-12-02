import Foundation
import PrchModel

/** An object describing the forwards and forward activity for the campaign. */
public struct Forwards: Codable, Equatable, Content {
  /** How many times the campaign has been forwarded. */
  public let forwardsCount: Int?

  /** How many times the forwarded campaign has been opened. */
  public let forwardsOpens: Int?

  public init(forwardsCount: Int? = nil, forwardsOpens: Int? = nil) {
    self.forwardsCount = forwardsCount
    self.forwardsOpens = forwardsOpens
  }

  public enum CodingKeys: String, CodingKey {
    case forwardsCount = "forwards_count"
    case forwardsOpens = "forwards_opens"
  }
}
