import Foundation
import PrchModel

/** Deprecated */
public struct CapsuleCRMTracking1: Codable, Equatable, Content {
  /** Update contact notes for a campaign based on a subscriber's email address. */
  public let notes: Bool?

  public init(notes: Bool? = nil) {
    self.notes = notes
  }

  public enum CodingKeys: String, CodingKey {
    case notes
  }
}
