import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update order line item

   Update a specific order line item.
   */
  struct PatchEcommerceStoresIdOrdersIdLinesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)").replacingOccurrences(of: "{" + "line_id" + "}", with: "\(lineId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public var storeId: String

    /** The id for the order in a store. */
    public var orderId: String

    /** The id for the line item of an order. */
    public var lineId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchEcommerceStoresIdOrdersIdLinesId", tag: "ecommerce", method: "PATCH", path: "/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceOrderLineItemModel
    public typealias BodyType = ECommerceOrderLineItem2Model

    public let body: ECommerceOrderLineItem2Model
  }
}
