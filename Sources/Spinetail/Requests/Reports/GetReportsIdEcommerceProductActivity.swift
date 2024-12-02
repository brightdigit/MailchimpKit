import Foundation
import PrchModel

public extension Reports {
  /**
   List campaign product activity

   Get breakdown of product activity for a campaign
   */
  struct GetReportsIdEcommerceProductActivity: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reports/{campaign_id}/ecommerce-product-activity"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)")
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

    /** The unique id for the campaign. */
    public let campaignId: String

    /** Returns files sorted by the specified field. */
    public let sortField: SortField?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String, sortField: SortField? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.campaignId = campaignId
      self.sortField = sortField
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
      if let sortField = self.sortField {
        params["sort_field"] = String(describing: sortField)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** Returns files sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case title
      case totalRevenue = "total_revenue"
      case totalPurchased = "total_purchased"
    }

    public typealias SuccessType = GetReportsIdEcommerceProductActivity200Response
    public typealias BodyType = Empty
  }
}
