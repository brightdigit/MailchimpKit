import Foundation
import PrchModel

/** [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws. */
public struct ListContact: Codable, Equatable, Content {
  /** The street address for the list contact. */
  public let address1: String?

  /** The street address for the list contact. */
  public let address2: String?

  /** The city for the list contact. */
  public let city: String?

  /** The company name for the list. */
  public let company: String?

  /** A two-character ISO3166 country code. Defaults to US if invalid. */
  public let country: String?

  /** The phone number for the list contact. */
  public let phone: String?

  /** The state for the list contact. */
  public let state: String?

  /** The postal or zip code for the list contact. */
  public let zip: String?

  public init(address1: String? = nil, address2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, phone: String? = nil, state: String? = nil, zip: String? = nil) {
    self.address1 = address1
    self.address2 = address2
    self.city = city
    self.company = company
    self.country = country
    self.phone = phone
    self.state = state
    self.zip = zip
  }

  public enum CodingKeys: String, CodingKey {
    case address1
    case address2
    case city
    case company
    case country
    case phone
    case state
    case zip
  }
}
