import Foundation
import PrchModel

/** Information about a specific cart. */
public struct ECommerceCart1: Codable, Equatable, Content {
  /** The three-letter ISO 4217 code for the currency that the cart uses. */
  public let currencyCode: String

  public let customer: ECommerceCustomer1

  /** A unique identifier for the cart. */
  public let id: String

  /** An array of the cart's line items. */
  public let lines: [ECommerceCartLineItem1]

  /** The order total for the cart. */
  public let orderTotal: Double

  /** A string that uniquely identifies the campaign for a cart. */
  public let campaignId: String?

  /** The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations. */
  public let checkoutURL: String?

  /** The total tax for the cart. */
  public let taxTotal: Double?

  public init(currencyCode: String, customer: ECommerceCustomer1, id: String, lines: [ECommerceCartLineItem1], orderTotal: Double, campaignId: String? = nil, checkoutURL: String? = nil, taxTotal: Double? = nil) {
    self.currencyCode = currencyCode
    self.customer = customer
    self.id = id
    self.lines = lines
    self.orderTotal = orderTotal
    self.campaignId = campaignId
    self.checkoutURL = checkoutURL
    self.taxTotal = taxTotal
  }

  public enum CodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case customer
    case id
    case lines
    case orderTotal = "order_total"
    case campaignId = "campaign_id"
    case checkoutURL = "checkout_url"
    case taxTotal = "tax_total"
  }
}
