import Foundation

import PrchModel
/** Information about a specific order. */
public struct ECommerceOrderModel: Codable, Equatable, Content {
  /** The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs. */
  public enum AutomationsAutomationsTrackingCode: String, Codable, Equatable, CaseIterable {
    case prec
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var billingAddress: BillingAddressModel?

  /** A string that uniquely identifies the campaign associated with an order. */
  public var campaignId: String?

  /** The date and time the order was cancelled in ISO 8601 format. */
  public var cancelledAtForeign: DateTime?

  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public var currencyCode: String?

  public var customer: ECommerceCustomerModel?

  /** The total amount of the discounts to be applied to the price of the order. */
  public var discountTotal: Double?

  /** The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
  public var financialStatus: String?

  /** The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
  public var fulfillmentStatus: String?

  /** A unique identifier for the order. */
  public var id: String?

  /** The URL for the page where the buyer landed when entering the shop. */
  public var landingSite: String?

  /** An array of the order's line items. */
  public var lines: [ECommerceOrderLineItemModel]?

  /** The order total associated with an order. */
  public var orderTotal: Double?

  /** The URL for the order. */
  public var orderURL: String?

  public var outreach: OutreachModel?

  /** The date and time the order was processed in ISO 8601 format. */
  public var processedAtForeign: DateTime?

  /** The promo codes applied on the order */
  public var promos: [PromosInnerModel]?

  public var shippingAddress: ShippingAddressModel?

  /** The shipping total for the order. */
  public var shippingTotal: Double?

  /** The unique identifier for the store. */
  public var storeId: String?

  /** The tax total associated with an order. */
  public var taxTotal: Double?

  /** The tracking carrier associated with the order. */
  public var trackingCarrier: String?

  /** The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs. */
  public var trackingCode: TrackingCode?

  /** The tracking number associated with the order. */
  public var trackingNumber: String?

  /** The tracking URL associated with the order. */
  public var trackingURL: String?

  /** The date and time the order was updated in ISO 8601 format. */
  public var updatedAtForeign: DateTime?

  public init(links: [ResourceLinkModel]? = nil, billingAddress: BillingAddressModel? = nil, campaignId: String? = nil, cancelledAtForeign: DateTime? = nil, currencyCode: String? = nil, customer: ECommerceCustomerModel? = nil, discountTotal: Double? = nil, financialStatus: String? = nil, fulfillmentStatus: String? = nil, id: String? = nil, landingSite: String? = nil, lines: [ECommerceOrderLineItemModel]? = nil, orderTotal: Double? = nil, orderURL: String? = nil, outreach: OutreachModel? = nil, processedAtForeign: DateTime? = nil, promos: [PromosInnerModel]? = nil, shippingAddress: ShippingAddressModel? = nil, shippingTotal: Double? = nil, storeId: String? = nil, taxTotal: Double? = nil, trackingCarrier: String? = nil, trackingCode: TrackingCode? = nil, trackingNumber: String? = nil, trackingURL: String? = nil, updatedAtForeign: DateTime? = nil) {
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

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
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
