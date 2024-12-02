import Foundation
import PrchModel

/** The store address. */
public struct Address1: Codable, Equatable, Content {
  /** The store's mailing address. */
  public let address1: String?

  /** An additional field for the store's mailing address. */
  public let address2: String?

  /** The city the store is located in. */
  public let city: String?

  /** The store's country. */
  public let country: String?

  /** The two-letter code for to the store's country. */
  public let countryCode: String?

  /** The latitude of the store location. */
  public let latitude: Double?

  /** The longitude of the store location. */
  public let longitude: Double?

  /** The store's postal or zip code. */
  public let postalCode: String?

  /** The store's state name or normalized province. */
  public let province: String?

  /** The two-letter code for the store's province or state. */
  public let provinceCode: String?

  public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, latitude: Double? = nil, longitude: Double? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
    self.address1 = address1
    self.address2 = address2
    self.city = city
    self.country = country
    self.countryCode = countryCode
    self.latitude = latitude
    self.longitude = longitude
    self.postalCode = postalCode
    self.province = province
    self.provinceCode = provinceCode
  }

  public enum CodingKeys: String, CodingKey {
    case address1
    case address2
    case city
    case country
    case countryCode = "country_code"
    case latitude
    case longitude
    case postalCode = "postal_code"
    case province
    case provinceCode = "province_code"
  }
}
