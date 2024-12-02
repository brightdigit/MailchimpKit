import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Delete store

   Delete a store. Deleting a store will also delete any associated subresources, including Customers, Orders, Products, and Carts.
   */
  struct DeleteEcommerceStoresId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public let storeId: String

    public init(storeId: String) {
      self.storeId = storeId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = [String: String]
    public typealias BodyType = Empty
  }
}
