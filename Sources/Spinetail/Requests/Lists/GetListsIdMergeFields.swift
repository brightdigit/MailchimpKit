import Foundation
import PrchModel

public extension Lists {
  /**
   List merge fields

   Get a list of all merge fields for an audience.
   */
  struct GetListsIdMergeFields: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/merge-fields"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public let listId: String

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public let count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public let offset: Int?

    /** The merge field type. */
    public let type: String?

    /** Whether it's a required merge field. */
    public let required: Bool?

    public init(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, required: Bool? = nil) {
      self.listId = listId
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.type = type
      self.required = required
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
      if let type = self.type {
        params["type"] = String(describing: type)
      }
      if let required = self.required {
        params["required"] = String(describing: required)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = CollectionOfMergeFields
    public typealias BodyType = Empty
  }
}
