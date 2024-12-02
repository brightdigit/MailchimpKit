import Foundation
import PrchModel

/** [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws. */
public struct ListContact2: Codable, Equatable, Content {
  /** The street address for the list contact. */
  public let address1: String

  /** The city for the list contact. */
  public let city: String

  /** The company name for the list. */
  public let company: String

  /** A two-character ISO3166 country code. Defaults to US if invalid. */
  public let country: String

  /** The state for the list contact. */
  public let state: String

  /** The postal or zip code for the list contact. */
  public let zip: String

  /** The street address for the list contact. */
  public let address2: String?

  /** The phone number for the list contact. */
  public let phone: String?

  public init(address1: String, city: String, company: String, country: String, state: String, zip: String, address2: String? = nil, phone: String? = nil) {
    self.address1 = address1
    self.city = city
    self.company = company
    self.country = country
    self.state = state
    self.zip = zip
    self.address2 = address2
    self.phone = phone
  }

  public enum CodingKeys: String, CodingKey {
    case address1
    case city
    case company
    case country
    case state
    case zip
    case address2
    case phone
  }
}
