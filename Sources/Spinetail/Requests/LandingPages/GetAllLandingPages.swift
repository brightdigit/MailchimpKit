import Foundation
import PrchModel

public extension LandingPages {
  /**
   List landing pages

   Get all landing pages.
   */
  struct GetAllLandingPages: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/landing-pages"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    /** Determines the order direction for sorted results. */
    public let sortDir: SortDir?

    /** Returns files sorted by the specified field. */
    public let sortField: SortField?

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public let count: Int?

    public init(sortDir: SortDir? = nil, sortField: SortField? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil) {
      self.sortDir = sortDir
      self.sortField = sortField
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let sortDir = self.sortDir {
        params["sort_dir"] = String(describing: sortDir)
      }
      if let sortField = self.sortField {
        params["sort_field"] = String(describing: sortField)
      }
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let count = self.count {
        params["count"] = String(describing: count)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

    /** Returns files sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case createdAt = "created_at"
      case updatedAt = "updated_at"
    }

    public typealias SuccessType = GetAllLandingPages200Response
    public typealias BodyType = Empty
  }
}
