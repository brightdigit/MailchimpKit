import Foundation
import PrchModel

/** For email question types, how many are new, known, or unknown contacts. */
public struct ContactCounts: Codable, Equatable, Content {
  /** The number of known contacts that responded to this survey. */
  public let known: Int?

  /** The number of new contacts that responded to this survey. */
  public let new: Int?

  /** The number of unknown contacts that responded to this survey. */
  public let unknown: Int?

  public init(known: Int? = nil, new: Int? = nil, unknown: Int? = nil) {
    self.known = known
    self.new = new
    self.unknown = unknown
  }

  public enum CodingKeys: String, CodingKey {
    case known
    case new
    case unknown
  }
}
