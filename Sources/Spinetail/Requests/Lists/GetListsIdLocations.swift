import Foundation
import PrchModel

public extension Lists {
  /**
   List locations

   Get the locations (countries) that the list's subscribers have been tagged to based on geocoding their IP address.
   */
  struct GetListsIdLocations: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/locations"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique ID for the list. */
    public let listId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
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
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ListLocations
    public typealias BodyType = Empty
  }
}
