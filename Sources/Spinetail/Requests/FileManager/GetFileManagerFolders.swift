import Foundation
import PrchModel

public extension FileManager {
  /**
   List folders

   Get a list of all folders in the File Manager.
   */
  struct GetFileManagerFolders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/folders"

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

    /** The Mailchimp account user who created the File Manager file. */
    public let createdBy: String?

    /** Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let beforeCreatedAt: String?

    /** Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let sinceCreatedAt: String?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.createdBy = createdBy
      self.beforeCreatedAt = beforeCreatedAt
      self.sinceCreatedAt = sinceCreatedAt
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
      if let createdBy = self.createdBy {
        params["created_by"] = String(describing: createdBy)
      }
      if let beforeCreatedAt = self.beforeCreatedAt {
        params["before_created_at"] = String(describing: beforeCreatedAt)
      }
      if let sinceCreatedAt = self.sinceCreatedAt {
        params["since_created_at"] = String(describing: sinceCreatedAt)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = FileManagerFolders
    public typealias BodyType = Empty
  }
}
