import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Get order line item

   Get information about a specific order line item.
   */
  struct GetEcommerceStoresIdOrdersIdLinesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)").replacingOccurrences(of: "{" + "line_id" + "}", with: "\(lineId)")
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

    /** The id for the line item of an order. */
    public let lineId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, storeId: String, orderId: String, lineId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.storeId = storeId
      self.orderId = orderId
      self.lineId = lineId
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

    public typealias SuccessType = ECommerceOrderLineItem
    public typealias BodyType = Empty
  }
}
