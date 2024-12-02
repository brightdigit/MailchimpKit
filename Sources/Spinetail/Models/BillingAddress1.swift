import Foundation
import PrchModel

/** The billing address for the order. */
public struct BillingAddress1: Codable, Equatable, Content {
  /** The billing address for the order. */
  public let address1: String?

  /** An additional field for the billing address. */
  public let address2: String?

  /** The city in the billing address. */
  public let city: String?

  /** The company associated with the billing address. */
  public let company: String?

  /** The country in the billing address. */
  public let country: String?

  /** The two-letter code for the country in the billing address. */
  public let countryCode: String?

  /** The latitude for the billing address location. */
  public let latitude: Double?

  /** The longitude for the billing address location. */
  public let longitude: Double?

  /** The name associated with the billing address. */
  public let name: String?

  /** The phone number for the billing address */
  public let phone: String?

  /** The postal or zip code in the billing address. */
  public let postalCode: String?

  /** The state or normalized province in the billing address. */
  public let province: String?

  /** The two-letter code for the province in the billing address. */
  public let provinceCode: String?

  public init(address1: String? = nil, address2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, countryCode: String? = nil, latitude: Double? = nil, longitude: Double? = nil, name: String? = nil, phone: String? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
    self.address1 = address1
    self.address2 = address2
    self.city = city
    self.company = company
    self.country = country
    self.countryCode = countryCode
    self.latitude = latitude
    self.longitude = longitude
    self.name = name
    self.phone = phone
    self.postalCode = postalCode
    self.province = province
    self.provinceCode = provinceCode
  }

  public enum CodingKeys: String, CodingKey {
    case address1
    case address2
    case city
    case company
    case country
    case countryCode = "country_code"
    case latitude
    case longitude
    case name
    case phone
    case postalCode = "postal_code"
    case province
    case provinceCode = "province_code"
  }
}
