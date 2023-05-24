import Foundation
import PrchModel

public extension AutomationsAutomationsEcommerce {
  /**
   Add order line item

   Add a new line item to an existing order.
   */
  struct PostEcommerceStoresIdOrdersIdLines: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/orders/{order_id}/lines"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public var storeId: String

    /** The id for the order in a store. */
    public var orderId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postEcommerceStoresIdOrdersIdLines", tag: "ecommerce", method: "POST", path: "/ecommerce/stores/{store_id}/orders/{order_id}/lines", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceOrderLineItemModel
    public typealias BodyType = ECommerceOrderLineItem1Model

    public let body: ECommerceOrderLineItem1Model
  }
}
