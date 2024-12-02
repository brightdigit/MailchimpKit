import Foundation
import PrchModel

/** Information about an Ecommerce Store's specific Promo Code */
public struct ECommercePromoCode: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The discount code. Restricted to UTF-8 characters with max length 50. */
  public let code: String?

  /** The date and time the promotion was created in ISO 8601 format. */
  public let createdAtForeign: MailchimpOptionalDate

  /** Whether the promo code is currently enabled. */
  public let enabled: Bool?

  /** A unique identifier for the promo Code. */
  public let id: String?

  /** The url that should be used in the promotion campaign restricted to UTF-8 characters with max length 2000. */
  public let redemptionURL: String?

  /** The date and time the promotion was updated in ISO 8601 format. */
  public let updatedAtForeign: MailchimpOptionalDate

  /** Number of times promo code has been used. */
  public let usageCount: Int?

  public init(links: [ResourceLink]? = nil, code: String? = nil, createdAtForeign: MailchimpOptionalDate, enabled: Bool? = nil, id: String? = nil, redemptionURL: String? = nil, updatedAtForeign: MailchimpOptionalDate, usageCount: Int? = nil) {
    self.links = links
    self.code = code
    self.createdAtForeign = createdAtForeign
    self.enabled = enabled
    self.id = id
    self.redemptionURL = redemptionURL
    self.updatedAtForeign = updatedAtForeign
    self.usageCount = usageCount
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case code
    case createdAtForeign = "created_at_foreign"
    case enabled
    case id
    case redemptionURL = "redemption_url"
    case updatedAtForeign = "updated_at_foreign"
    case usageCount = "usage_count"
  }
}
