import Foundation
import PrchModel

public extension Lists {
  /**
   List recent member notes

   Get recent notes for a specific list member.
   */
  struct GetListsIdMembersIdNotes: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/notes"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The MD5 hash of the lowercase version of the list member's email address. */
    public let subscriberHash: String

    /** Returns notes sorted by the specified field. */
    public let sortField: SortField?

    /** Determines the order direction for sorted results. */
    public let sortDir: SortDir?

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public let count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public let offset: Int?

    public init(listId: String, subscriberHash: String, sortField: SortField? = nil, sortDir: SortDir? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) {
      self.listId = listId
      self.subscriberHash = subscriberHash
      self.sortField = sortField
      self.sortDir = sortDir
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let sortField = self.sortField {
        params["sort_field"] = String(describing: sortField)
      }
      if let sortDir = self.sortDir {
        params["sort_dir"] = String(describing: sortDir)
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
      if let offset = self.offset {
        params["offset"] = String(describing: offset)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** Returns notes sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case createdAt = "created_at"
      case updatedAt = "updated_at"
      case noteId = "note_id"
    }

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

    public typealias SuccessType = CollectionOfNotes
    public typealias BodyType = Empty
  }
}
