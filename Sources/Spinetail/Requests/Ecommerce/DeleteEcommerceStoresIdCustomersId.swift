import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Delete customer

   Delete a customer from a store.
   */
  struct DeleteEcommerceStoresIdCustomersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/customers/{customer_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "customer_id" + "}", with: "\(customerId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public let storeId: String

    /** The id for the customer of a store. */
    public let customerId: String

    public init(storeId: String, customerId: String) {
      self.storeId = storeId
      self.customerId = customerId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
