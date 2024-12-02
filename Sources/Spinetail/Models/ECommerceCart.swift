import Foundation
import PrchModel

/** Information about a specific cart. */
public struct ECommerceCart: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** A string that uniquely identifies the campaign associated with a cart. */
  public let campaignId: String?

  /** The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations. */
  public let checkoutURL: String?

  /** The date and time the cart was created in ISO 8601 format. */
  public let createdAt: MailchimpOptionalDate

  /** The three-letter ISO 4217 code for the currency that the cart uses. */
  public let currencyCode: String?

  public let customer: ECommerceCustomer?

  /** A unique identifier for the cart. */
  public let id: String?

  /** An array of the cart's line items. */
  public let lines: [ECommerceCartLineItem]?

  /** The order total for the cart. */
  public let orderTotal: Double?

  /** The total tax for the cart. */
  public let taxTotal: Double?

  /** The date and time the cart was last updated in ISO 8601 format. */
  public let updatedAt: MailchimpOptionalDate

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, checkoutURL: String? = nil, createdAt: MailchimpOptionalDate, currencyCode: String? = nil, customer: ECommerceCustomer? = nil, id: String? = nil, lines: [ECommerceCartLineItem]? = nil, orderTotal: Double? = nil, taxTotal: Double? = nil, updatedAt: MailchimpOptionalDate) {
    self.links = links
    self.campaignId = campaignId
    self.checkoutURL = checkoutURL
    self.createdAt = createdAt
    self.currencyCode = currencyCode
    self.customer = customer
    self.id = id
    self.lines = lines
    self.orderTotal = orderTotal
    self.taxTotal = taxTotal
    self.updatedAt = updatedAt
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case checkoutURL = "checkout_url"
    case createdAt = "created_at"
    case currencyCode = "currency_code"
    case customer
    case id
    case lines
    case orderTotal = "order_total"
    case taxTotal = "tax_total"
    case updatedAt = "updated_at"
  }
}
