import Foundation
import PrchModel

/** The customer's address. */
public struct Address: Codable, Equatable, Content {
  /** The mailing address of the customer. */
  public let address1: String?

  /** An additional field for the customer's mailing address. */
  public let address2: String?

  /** The city the customer is located in. */
  public let city: String?

  /** The customer's country. */
  public let country: String?

  /** The two-letter code for the customer's country. */
  public let countryCode: String?

  /** The customer's postal or zip code. */
  public let postalCode: String?

  /** The customer's state name or normalized province. */
  public let province: String?

  /** The two-letter code for the customer's province or state. */
  public let provinceCode: String?

  public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
    self.address1 = address1
    self.address2 = address2
    self.city = city
    self.country = country
    self.countryCode = countryCode
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
    case postalCode = "postal_code"
    case province
    case provinceCode = "province_code"
  }
}
