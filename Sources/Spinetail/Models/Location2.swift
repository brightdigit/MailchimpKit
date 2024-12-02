import Foundation
import PrchModel

/** Subscriber location information. */
public struct Location2: Codable, Equatable, Content {
  /** The unique code for the location country. */
  public let countryCode: String?

  /** The offset for timezones where daylight saving time is observed. */
  public let dstoff: Int?

  /** The time difference in hours from GMT. */
  public let gmtoff: Int?

  /** The location latitude. */
  public let latitude: Double?

  /** The location longitude. */
  public let longitude: Double?

  /** The region for the location. */
  public let region: String?

  /** The timezone for the location. */
  public let timezone: String?

  public init(countryCode: String? = nil, dstoff: Int? = nil, gmtoff: Int? = nil, latitude: Double? = nil, longitude: Double? = nil, region: String? = nil, timezone: String? = nil) {
    self.countryCode = countryCode
    self.dstoff = dstoff
    self.gmtoff = gmtoff
    self.latitude = latitude
    self.longitude = longitude
    self.region = region
    self.timezone = timezone
  }

  public enum CodingKeys: String, CodingKey {
    case countryCode = "country_code"
    case dstoff
    case gmtoff
    case latitude
    case longitude
    case region
    case timezone
  }
}
