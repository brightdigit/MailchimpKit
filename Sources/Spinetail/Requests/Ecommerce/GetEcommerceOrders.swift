import Foundation
import PrchModel

public extension Ecommerce {
  /**
   List account orders

   Get information about an account's orders.
   */
  struct GetEcommerceOrders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/orders"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public var count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public var offset: Int?

    /** Restrict results to orders with a specific `campaign_id` value. */
    public var campaignId: String?

    /** Restrict results to orders with a specific `outreach_id` value. */
    public var outreachId: String?

    /** Restrict results to orders made by a specific customer. */
    public var customerId: String?

    /** Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. */
    public var hasOutreach: Bool?

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
      if let campaignId = self.campaignId {
        params["campaign_id"] = String(describing: campaignId)
      }
      if let outreachId = self.outreachId {
        params["outreach_id"] = String(describing: outreachId)
      }
      if let customerId = self.customerId {
        params["customer_id"] = String(describing: customerId)
      }
      if let hasOutreach = self.hasOutreach {
        params["has_outreach"] = String(describing: hasOutreach)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Orders
    public typealias BodyType = Empty
  }
}
