import Foundation
import PrchModel

/** An individual store in an account. */
public struct ECommerceStore: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public let address: Address1?

  public let automations: AutomationsModel?

  public let connectedSite: ConnectedSite2?

  /** The date and time the store was created in ISO 8601 format. */
  public let createdAt: MailchimpOptionalDate

  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public let currencyCode: String?

  /** The store domain.  The store domain must be unique within a user account. */
  public let domain: String?

  /** The email address for the store. */
  public let emailAddress: String?

  /** The unique identifier for the store. */
  public let id: String?

  /** Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations). */
  public let isSyncing: Bool?

  /** The unique identifier for the list that's associated with the store. The `list_id` for a specific store can't change. */
  public let listId: String?

  /** The status of the list connected to the store, namely if it's deleted or disabled. */
  public let listIsActive: Bool?

  /** The currency format for the store. For example: `$`, `£`, etc. */
  public let moneyFormat: String?

  /** The name of the store. */
  public let name: String?

  /** The store phone number. */
  public let phone: String?

  /** The e-commerce platform of the store. */
  public let platform: String?

  /** The primary locale for the store. For example: `en`, `de`, etc. */
  public let primaryLocale: String?

  /** The timezone for the store. */
  public let timezone: String?

  /** The date and time the store was last updated in ISO 8601 format. */
  public let updatedAt: MailchimpOptionalDate

  public init(links: [ResourceLink]? = nil, address: Address1? = nil, automations: AutomationsModel? = nil, connectedSite: ConnectedSite2? = nil, createdAt: MailchimpOptionalDate, currencyCode: String? = nil, domain: String? = nil, emailAddress: String? = nil, id: String? = nil, isSyncing: Bool? = nil, listId: String? = nil, listIsActive: Bool? = nil, moneyFormat: String? = nil, name: String? = nil, phone: String? = nil, platform: String? = nil, primaryLocale: String? = nil, timezone: String? = nil, updatedAt: MailchimpOptionalDate) {
    self.links = links
    self.address = address
    self.automations = automations
    self.connectedSite = connectedSite
    self.createdAt = createdAt
    self.currencyCode = currencyCode
    self.domain = domain
    self.emailAddress = emailAddress
    self.id = id
    self.isSyncing = isSyncing
    self.listId = listId
    self.listIsActive = listIsActive
    self.moneyFormat = moneyFormat
    self.name = name
    self.phone = phone
    self.platform = platform
    self.primaryLocale = primaryLocale
    self.timezone = timezone
    self.updatedAt = updatedAt
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case address
    case automations
    case connectedSite = "connected_site"
    case createdAt = "created_at"
    case currencyCode = "currency_code"
    case domain
    case emailAddress = "email_address"
    case id
    case isSyncing = "is_syncing"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case moneyFormat = "money_format"
    case name
    case phone
    case platform
    case primaryLocale = "primary_locale"
    case timezone
    case updatedAt = "updated_at"
  }
}
