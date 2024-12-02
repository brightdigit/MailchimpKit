import Foundation
import PrchModel

/** Subscriber location information. */
public struct Location: Codable, Equatable, Content {
  /** The location latitude. */
  public let latitude: Double?

  /** The location longitude. */
  public let longitude: Double?

  public init(latitude: Double? = nil, longitude: Double? = nil) {
    self.latitude = latitude
    self.longitude = longitude
  }

  public enum CodingKeys: String, CodingKey {
    case latitude
    case longitude
  }
}
