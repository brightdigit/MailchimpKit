import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add order

   Add a new order to a store.
   */
  struct PostEcommerceStoresIdOrders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/orders"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public let storeId: String

    public init(body: ECommerceOrder1, storeId: String) {
      self.body = body
      self.storeId = storeId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceOrder
    public typealias BodyType = ECommerceOrder1

    public let body: ECommerceOrder1
  }
}
