import Foundation
import PrchModel

public struct ListsInner: Codable, Equatable, Content {
  /** The ISO 3166 2 digit country code. */
  public let countryCode: String?

  /** The number of unique campaign opens for a region. */
  public let opens: Int?

  /** An internal code for the region representing the more specific location area such as city or state. When this is blank, it indicates we know the country, but not the region. */
  public let region: String?

  /** The name of the region, if we have one. For blank "region" values, this will be "Rest of Country". */
  public let regionName: String?

  public init(countryCode: String? = nil, opens: Int? = nil, region: String? = nil, regionName: String? = nil) {
    self.countryCode = countryCode
    self.opens = opens
    self.region = region
    self.regionName = regionName
  }

  public enum CodingKeys: String, CodingKey {
    case countryCode = "country_code"
    case opens
    case region
    case regionName = "region_name"
  }
}
