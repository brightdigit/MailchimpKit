import Foundation

import PrchModel
/** Subscriber location information. */
public struct Location1Model: Codable, Equatable, Content {
  /** The unique code for the location country. */
  public var countryCode: String?

  /** The offset for timezones where daylight saving time is observed. */
  public var dstoff: Int?

  /** The time difference in hours from GMT. */
  public var gmtoff: Int?

  /** The location latitude. */
  public var latitude: Double?

  /** The location longitude. */
  public var longitude: Double?

  /** The timezone for the location. */
  public var timezone: String?

  public init(countryCode: String? = nil, dstoff: Int? = nil, gmtoff: Int? = nil, latitude: Double? = nil, longitude: Double? = nil, timezone: String? = nil) {
    self.countryCode = countryCode
    self.dstoff = dstoff
    self.gmtoff = gmtoff
    self.latitude = latitude
    self.longitude = longitude
    self.timezone = timezone
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case countryCode = "country_code"
    case dstoff
    case gmtoff
    case latitude
    case longitude
    case timezone
  }
}
