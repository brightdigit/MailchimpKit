import Foundation
import PrchModel

public extension Templates {
  /**
   List templates

   Get a list of an account's available templates.
   */
  struct GetTemplates: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/templates"

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

    /** The Mailchimp account user who created the template. */
    public let createdBy: String?

    /** Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let sinceDateCreated: String?

    /** Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let beforeDateCreated: String?

    /** Limit results based on template type. */
    public let type: String?

    /** Limit results based on category. */
    public let category: String?

    /** The unique folder id. */
    public let folderId: String?

    /** Returns user templates sorted by the specified field. */
    public let sortField: SortField?

    /** Determines the order direction for sorted results. */
    public let sortDir: SortDir?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, sinceDateCreated: String? = nil, beforeDateCreated: String? = nil, type: String? = nil, category: String? = nil, folderId: String? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.createdBy = createdBy
      self.sinceDateCreated = sinceDateCreated
      self.beforeDateCreated = beforeDateCreated
      self.type = type
      self.category = category
      self.folderId = folderId
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
      if let createdBy = self.createdBy {
        params["created_by"] = String(describing: createdBy)
      }
      if let sinceDateCreated = self.sinceDateCreated {
        params["since_date_created"] = String(describing: sinceDateCreated)
      }
      if let beforeDateCreated = self.beforeDateCreated {
        params["before_date_created"] = String(describing: beforeDateCreated)
      }
      if let type = self.type {
        params["type"] = String(describing: type)
      }
      if let category = self.category {
        params["category"] = String(describing: category)
      }
      if let folderId = self.folderId {
        params["folder_id"] = String(describing: folderId)
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

    /** Returns user templates sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case dateCreated = "date_created"
      case dateEdited = "date_edited"
      case name
    }

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

    public typealias SuccessType = TemplatesModel
    public typealias BodyType = Empty
  }
}
