import Foundation

import PrchModel
/** The shipping address for the order. */
public struct ShippingAddressModel: Codable, Equatable, Content {
  /** The shipping address for the order. */
  public var address1: String?

  /** An additional field for the shipping address. */
  public var address2: String?

  /** The city in the order's shipping address. */
  public var city: String?

  /** The company associated with an order's shipping address. */
  public var company: String?

  /** The country in the order's shipping address. */
  public var country: String?

  /** The two-letter code for the country in the shipping address. */
  public var countryCode: String?

  /** The latitude for the shipping address location. */
  public var latitude: Double?

  /** The longitude for the shipping address location. */
  public var longitude: Double?

  /** The name associated with an order's shipping address. */
  public var name: String?

  /** The phone number for the order's shipping address */
  public var phone: String?

  /** The postal or zip code in the order's shipping address. */
  public var postalCode: String?

  /** The state or normalized province in the order's shipping address. */
  public var province: String?

  /** The two-letter code for the province or state the order's shipping address is located in. */
  public var provinceCode: String?

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

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
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
