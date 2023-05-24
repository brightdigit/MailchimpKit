import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add cart

   Add a new cart to a store.
   */
  struct PostEcommerceStoresIdCarts: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/carts"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public var storeId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceCart
    public typealias BodyType = ECommerceCart1

    public let body: ECommerceCart1
  }
}
