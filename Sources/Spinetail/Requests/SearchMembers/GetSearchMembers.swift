import Foundation
import PrchModel

public extension AutomationsAutomationsSearchMembers {
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
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The search query used to filter results. Query should be a valid email, or a string representing a contact's first or last name. */
    public var query: String

    /** The unique id for the list. */
    public var listId: String?

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

    // public static let service = APIService<Response>(id: "getSearchMembers", tag: "searchMembers", method: "GET", path: "/search-members", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = MembersModel
    public typealias BodyType = Empty
  }
}
