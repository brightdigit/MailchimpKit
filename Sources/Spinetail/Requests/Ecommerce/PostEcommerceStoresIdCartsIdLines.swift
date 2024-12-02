import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add cart line item

   Add a new line item to an existing cart.
   */
  struct PostEcommerceStoresIdCartsIdLines: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(cartId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public let storeId: String

    /** The id for the cart. */
    public let cartId: String

    public init(body: ECommerceCartLineItem1, storeId: String, cartId: String) {
      self.body = body
      self.storeId = storeId
      self.cartId = cartId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceCartLineItem
    public typealias BodyType = ECommerceCartLineItem1

    public let body: ECommerceCartLineItem1
  }
}
