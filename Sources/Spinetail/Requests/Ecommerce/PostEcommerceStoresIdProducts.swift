import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add product

   Add a new product to a store.
   */
  struct PostEcommerceStoresIdProducts: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public let storeId: String

    public init(body: ECommerceProduct1, storeId: String) {
      self.body = body
      self.storeId = storeId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceProduct
    public typealias BodyType = ECommerceProduct1

    public let body: ECommerceProduct1
  }
}
