import Foundation
import PrchModel

/** Deprecated */
public struct CapsuleCRMTracking2: Codable, Equatable, Content {
  /** Update contact notes for a campaign based on subscriber email addresses. */
  public let notes: Bool?

  public init(notes: Bool? = nil) {
    self.notes = notes
  }

  public enum CodingKeys: String, CodingKey {
    case notes
  }
}
