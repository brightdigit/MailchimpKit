import Foundation
import PrchModel

public extension Ecommerce {
  /**
   List customers

   Get information about a store's customers.
   */
  struct GetEcommerceStoresIdCustomers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/customers"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public let count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public let offset: Int?

    /** The store id. */
    public let storeId: String

    /** Restrict the response to customers with the email address. */
    public let emailAddress: String?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, storeId: String, emailAddress: String? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.storeId = storeId
      self.emailAddress = emailAddress
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let count = self.count {
        params["count"] = String(describing: count)
      }
      if let offset = self.offset {
        params["offset"] = String(describing: offset)
      }
      if let emailAddress = self.emailAddress {
        params["email_address"] = String(describing: emailAddress)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Customers
    public typealias BodyType = Empty
  }
}
