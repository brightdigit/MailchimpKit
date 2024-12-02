import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Delete order

   Delete an order.
   */
  struct DeleteEcommerceStoresIdOrdersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/orders/{order_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public let storeId: String

    /** The id for the order in a store. */
    public let orderId: String

    public init(storeId: String, orderId: String) {
      self.storeId = storeId
      self.orderId = orderId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
