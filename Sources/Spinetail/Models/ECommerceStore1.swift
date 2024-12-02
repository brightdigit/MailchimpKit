import Foundation
import PrchModel

/** An individual store in an account. */
public struct ECommerceStore1: Codable, Equatable, Content {
  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public let currencyCode: String

  /** The unique identifier for the store. */
  public let id: String

  /** The unique identifier for the list associated with the store. The `list_id` for a specific store cannot change. */
  public let listId: String

  /** The name of the store. */
  public let name: String

  public let address: Address1?

  /** The store domain. This parameter is required for Connected Sites and Google Ads. */
  public let domain: String?

  /** The email address for the store. */
  public let emailAddress: String?

  /** Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations). */
  public let isSyncing: Bool?

  /** The currency format for the store. For example: `$`, `£`, etc. */
  public let moneyFormat: String?

  /** The store phone number. */
  public let phone: String?

  /** The e-commerce platform of the store. */
  public let platform: String?

  /** The primary locale for the store. For example: `en`, `de`, etc. */
  public let primaryLocale: String?

  /** The timezone for the store. */
  public let timezone: String?

  public init(currencyCode: String, id: String, listId: String, name: String, address: Address1? = nil, domain: String? = nil, emailAddress: String? = nil, isSyncing: Bool? = nil, moneyFormat: String? = nil, phone: String? = nil, platform: String? = nil, primaryLocale: String? = nil, timezone: String? = nil) {
    self.currencyCode = currencyCode
    self.id = id
    self.listId = listId
    self.name = name
    self.address = address
    self.domain = domain
    self.emailAddress = emailAddress
    self.isSyncing = isSyncing
    self.moneyFormat = moneyFormat
    self.phone = phone
    self.platform = platform
    self.primaryLocale = primaryLocale
    self.timezone = timezone
  }

  public enum CodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case id
    case listId = "list_id"
    case name
    case address
    case domain
    case emailAddress = "email_address"
    case isSyncing = "is_syncing"
    case moneyFormat = "money_format"
    case phone
    case platform
    case primaryLocale = "primary_locale"
    case timezone
  }
}
