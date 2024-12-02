import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Get order info

   Get information about a specific order.
   */
  struct GetEcommerceStoresIdOrdersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/orders/{order_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The store id. */
    public let storeId: String

    /** The id for the order in a store. */
    public let orderId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, storeId: String, orderId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.storeId = storeId
      self.orderId = orderId
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceOrder
    public typealias BodyType = Empty
  }
}
