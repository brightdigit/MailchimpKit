import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add customer

   Add a new customer to a store.
   */
  struct PostEcommerceStoresIdCustomers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/customers"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public let storeId: String

    public init(body: ECommerceCustomer3, storeId: String) {
      self.body = body
      self.storeId = storeId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceCustomer
    public typealias BodyType = ECommerceCustomer3

    public let body: ECommerceCustomer3
  }
}
