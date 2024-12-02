import Foundation
import PrchModel

/** Information about a specific cart. */
public struct ECommerceCart2: Codable, Equatable, Content {
  /** A string that uniquely identifies the campaign associated with a cart. */
  public let campaignId: String?

  /** The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations. */
  public let checkoutURL: String?

  /** The three-letter ISO 4217 code for the currency that the cart uses. */
  public let currencyCode: String?

  public let customer: ECommerceCustomer2?

  /** An array of the cart's line items. */
  public let lines: [ECommerceCartLineItem2]?

  /** The order total for the cart. */
  public let orderTotal: Double?

  /** The total tax for the cart. */
  public let taxTotal: Double?

  public init(campaignId: String? = nil, checkoutURL: String? = nil, currencyCode: String? = nil, customer: ECommerceCustomer2? = nil, lines: [ECommerceCartLineItem2]? = nil, orderTotal: Double? = nil, taxTotal: Double? = nil) {
    self.campaignId = campaignId
    self.checkoutURL = checkoutURL
    self.currencyCode = currencyCode
    self.customer = customer
    self.lines = lines
    self.orderTotal = orderTotal
    self.taxTotal = taxTotal
  }

  public enum CodingKeys: String, CodingKey {
    case campaignId = "campaign_id"
    case checkoutURL = "checkout_url"
    case currencyCode = "currency_code"
    case customer
    case lines
    case orderTotal = "order_total"
    case taxTotal = "tax_total"
  }
}
