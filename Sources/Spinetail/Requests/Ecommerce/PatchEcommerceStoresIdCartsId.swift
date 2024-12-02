import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update cart

   Update a specific cart.
   */
  struct PatchEcommerceStoresIdCartsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/carts/{cart_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(cartId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public let storeId: String

    /** The id for the cart. */
    public let cartId: String

    public init(body: ECommerceCart2, storeId: String, cartId: String) {
      self.body = body
      self.storeId = storeId
      self.cartId = cartId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceCart
    public typealias BodyType = ECommerceCart2

    public let body: ECommerceCart2
  }
}
