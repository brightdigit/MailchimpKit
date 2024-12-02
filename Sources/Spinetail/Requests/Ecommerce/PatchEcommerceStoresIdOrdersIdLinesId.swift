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
    public let storeId: String

    /** The id for the order in a store. */
    public let orderId: String

    /** The id for the line item of an order. */
    public let lineId: String

    public init(body: ECommerceOrderLineItem2, storeId: String, orderId: String, lineId: String) {
      self.body = body
      self.storeId = storeId
      self.orderId = orderId
      self.lineId = lineId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceOrderLineItem
    public typealias BodyType = ECommerceOrderLineItem2

    public let body: ECommerceOrderLineItem2
  }
}
