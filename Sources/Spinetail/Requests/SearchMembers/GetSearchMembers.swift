import Foundation
import PrchModel

public extension SearchMembers {
  /**
   Search members

   Search for list members. This search can be restricted to a specific list, or can be used to search across all lists in an account.
   */
  struct GetSearchMembers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/search-members"

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

    /** The search query used to filter results. Query should be a valid email, or a string representing a contact's first or last name. */
    public let query: String

    /** The unique id for the list. */
    public let listId: String?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, query: String, listId: String? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.query = query
      self.listId = listId
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      params["query"] = String(describing: query)
      if let listId = self.listId {
        params["list_id"] = String(describing: listId)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Members
    public typealias BodyType = Empty
  }
}
