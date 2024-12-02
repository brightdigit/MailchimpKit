import Foundation
import PrchModel

/** Information about a specific order. */
public struct ECommerceOrder: Codable, Equatable, Content {
  /** The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs. */
  public enum TrackingCode: String, Codable, Equatable, CaseIterable {
    case prec
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public let billingAddress: BillingAddress?

  /** A string that uniquely identifies the campaign associated with an order. */
  public let campaignId: String?

  /** The date and time the order was cancelled in ISO 8601 format. */
  public let cancelledAtForeign: MailchimpOptionalDate

  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public let currencyCode: String?

  public let customer: ECommerceCustomer?

  /** The total amount of the discounts to be applied to the price of the order. */
  public let discountTotal: Double?

  /** The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
  public let financialStatus: String?

  /** The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
  public let fulfillmentStatus: String?

  /** A unique identifier for the order. */
  public let id: String?

  /** The URL for the page where the buyer landed when entering the shop. */
  public let landingSite: String?

  /** An array of the order's line items. */
  public let lines: [ECommerceOrderLineItem]?

  /** The order total associated with an order. */
  public let orderTotal: Double?

  /** The URL for the order. */
  public let orderURL: String?

  public let outreach: Outreach?

  /** The date and time the order was processed in ISO 8601 format. */
  public let processedAtForeign: MailchimpOptionalDate

  /** The promo codes applied on the order */
  public let promos: [PromosInner]?

  public let shippingAddress: ShippingAddress?

  /** The shipping total for the order. */
  public let shippingTotal: Double?

  /** The unique identifier for the store. */
  public let storeId: String?

  /** The tax total associated with an order. */
  public let taxTotal: Double?

  /** The tracking carrier associated with the order. */
  public let trackingCarrier: String?

  /** The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs. */
  public let trackingCode: TrackingCode?

  /** The tracking number associated with the order. */
  public let trackingNumber: String?

  /** The tracking URL associated with the order. */
  public let trackingURL: String?

  /** The date and time the order was updated in ISO 8601 format. */
  public let updatedAtForeign: MailchimpOptionalDate

  public init(
    links: [ResourceLink]? = nil, billingAddress: BillingAddress? = nil, campaignId: String? = nil,
    cancelledAtForeign: MailchimpOptionalDate, currencyCode: String? = nil, customer: ECommerceCustomer? = nil,
    discountTotal: Double? = nil, financialStatus: String? = nil, fulfillmentStatus: String? = nil, id: String? = nil,
    landingSite: String? = nil, lines: [ECommerceOrderLineItem]? = nil, orderTotal: Double? = nil,
    orderURL: String? = nil, outreach: Outreach? = nil, processedAtForeign: MailchimpOptionalDate,
    promos: [PromosInner]? = nil, shippingAddress: ShippingAddress? = nil, shippingTotal: Double? = nil, storeId: String? = nil, taxTotal: Double? = nil, trackingCarrier: String? = nil,
    trackingCode: TrackingCode? = nil, trackingNumber: String? = nil, trackingURL: String? = nil,
    updatedAtForeign: MailchimpOptionalDate
  ) {
    self.links = links
    self.billingAddress = billingAddress
    self.campaignId = campaignId
    self.cancelledAtForeign = cancelledAtForeign
    self.currencyCode = currencyCode
    self.customer = customer
    self.discountTotal = discountTotal
    self.financialStatus = financialStatus
    self.fulfillmentStatus = fulfillmentStatus
    self.id = id
    self.landingSite = landingSite
    self.lines = lines
    self.orderTotal = orderTotal
    self.orderURL = orderURL
    self.outreach = outreach
    self.processedAtForeign = processedAtForeign
    self.promos = promos
    self.shippingAddress = shippingAddress
    self.shippingTotal = shippingTotal
    self.storeId = storeId
    self.taxTotal = taxTotal
    self.trackingCarrier = trackingCarrier
    self.trackingCode = trackingCode
    self.trackingNumber = trackingNumber
    self.trackingURL = trackingURL
    self.updatedAtForeign = updatedAtForeign
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case billingAddress = "billing_address"
    case campaignId = "campaign_id"
    case cancelledAtForeign = "cancelled_at_foreign"
    case currencyCode = "currency_code"
    case customer
    case discountTotal = "discount_total"
    case financialStatus = "financial_status"
    case fulfillmentStatus = "fulfillment_status"
    case id
    case landingSite = "landing_site"
    case lines
    case orderTotal = "order_total"
    case orderURL = "order_url"
    case outreach
    case processedAtForeign = "processed_at_foreign"
    case promos
    case shippingAddress = "shipping_address"
    case shippingTotal = "shipping_total"
    case storeId = "store_id"
    case taxTotal = "tax_total"
    case trackingCarrier = "tracking_carrier"
    case trackingCode = "tracking_code"
    case trackingNumber = "tracking_number"
    case trackingURL = "tracking_url"
    case updatedAtForeign = "updated_at_foreign"
  }
}
