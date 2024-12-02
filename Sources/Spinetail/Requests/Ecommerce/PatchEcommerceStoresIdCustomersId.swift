import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update customer

   Update a customer.
   */
  struct PatchEcommerceStoresIdCustomersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/customers/{customer_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "customer_id" + "}", with: "\(customerId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public let storeId: String

    /** The id for the customer of a store. */
    public let customerId: String

    public init(body: ECommerceCustomer2, storeId: String, customerId: String) {
      self.body = body
      self.storeId = storeId
      self.customerId = customerId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceCustomer
    public typealias BodyType = ECommerceCustomer2

    public let body: ECommerceCustomer2
  }
}
