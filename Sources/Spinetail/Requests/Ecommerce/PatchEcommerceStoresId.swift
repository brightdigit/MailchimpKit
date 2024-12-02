import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update store

   Update a store.
   */
  struct PatchEcommerceStoresId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public let storeId: String

    public init(body: ECommerceStore2, storeId: String) {
      self.body = body
      self.storeId = storeId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceStore
    public typealias BodyType = ECommerceStore2

    public let body: ECommerceStore2
  }
}
