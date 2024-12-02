import Foundation
import PrchModel

/** Information about the account contact. */
public struct AccountContact: Codable, Equatable, Content {
  /** The street address for the account contact. */
  public let addr1: String?

  /** The street address for the account contact. */
  public let addr2: String?

  /** The city for the account contact. */
  public let city: String?

  /** The company name for the account. */
  public let company: String?

  /** The country for the account contact. */
  public let country: String?

  /** The state for the account contact. */
  public let state: String?

  /** The zip code for the account contact. */
  public let zip: String?

  public init(addr1: String? = nil, addr2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, state: String? = nil, zip: String? = nil) {
    self.addr1 = addr1
    self.addr2 = addr2
    self.city = city
    self.company = company
    self.country = country
    self.state = state
    self.zip = zip
  }

  public enum CodingKeys: String, CodingKey {
    case addr1
    case addr2
    case city
    case company
    case country
    case state
    case zip
  }
}
