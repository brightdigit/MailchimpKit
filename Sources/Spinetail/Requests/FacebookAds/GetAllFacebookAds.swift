import Foundation
import PrchModel

public extension FacebookAds {
  /**
   List facebook ads

   Get list of Facebook ads.
   */
  struct GetAllFacebookAds: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/facebook-ads"

    public var path: String {
      Self.pathTemplate
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

    /** Returns files sorted by the specified field. */
    public let sortField: SortField?

    /** Determines the order direction for sorted results. */
    public let sortDir: SortDir?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.sortField = sortField
      self.sortDir = sortDir
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
      if let sortDir = self.sortDir {
        params["sort_dir"] = String(describing: sortDir)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** Returns files sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case createdAt = "created_at"
      case updatedAt = "updated_at"
      case endTime = "end_time"
    }

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

    public typealias SuccessType = GetAllFacebookAds200Response
    public typealias BodyType = Empty
  }
}
