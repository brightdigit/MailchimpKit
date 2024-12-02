import Foundation
import PrchModel

/** Information about an Ecommerce Store's specific Promo Rule. */
public struct ECommercePromoRule2: Codable, Equatable, Content {
  /** The target that the discount applies to. */
  public enum Target: String, Codable, Equatable, CaseIterable {
    case perItem = "per_item"
    case total
    case shipping
  }

  /** Type of discount. For free shipping set type to fixed. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case fixed
    case percentage
  }

  /** The amount of the promo code discount. If 'type' is 'fixed', the amount is treated as a monetary value. If 'type' is 'percentage', amount must be a decimal value between 0.0 and 1.0, inclusive. */
  public let amount: Float?

  /** The date and time the promotion was created in ISO 8601 format. */
  public let createdAtForeign: MailchimpOptionalDate

  /** The description of a promotion restricted to UTF-8 characters with max length 255. */
  public let description: String?

  /** Whether the promo rule is currently enabled. */
  public let enabled: Bool?

  /** The date and time when the promotion ends. Must be after starts_at and in ISO 8601 format. */
  public let endsAt: String?

  /** The date and time when the promotion is in effect in ISO 8601 format. */
  public let startsAt: MailchimpOptionalDate

  /** The target that the discount applies to. */
  public let target: Target?

  /** The title that will show up in promotion campaign. Restricted to UTF-8 characters with max length of 100 bytes. */
  public let title: String?

  /** Type of discount. For free shipping set type to fixed. */
  public let type: `Type`?

  /** The date and time the promotion was updated in ISO 8601 format. */
  public let updatedAtForeign: MailchimpOptionalDate

  public init(amount: Float? = nil, createdAtForeign: MailchimpOptionalDate, description: String? = nil, enabled: Bool? = nil, endsAt: String? = nil, startsAt: MailchimpOptionalDate, target: Target? = nil, title: String? = nil, type: Type? = nil, updatedAtForeign: MailchimpOptionalDate) {
    self.amount = amount
    self.createdAtForeign = createdAtForeign
    self.description = description
    self.enabled = enabled
    self.endsAt = endsAt
    self.startsAt = startsAt
    self.target = target
    self.title = title
    self.type = type
    self.updatedAtForeign = updatedAtForeign
  }

  public enum CodingKeys: String, CodingKey {
    case amount
    case createdAtForeign = "created_at_foreign"
    case description
    case enabled
    case endsAt = "ends_at"
    case startsAt = "starts_at"
    case target
    case title
    case type
    case updatedAtForeign = "updated_at_foreign"
  }
}
