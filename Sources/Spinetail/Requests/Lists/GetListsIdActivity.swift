import Foundation
import PrchModel

public extension Lists {
  /**
   List recent activity

   Get up to the previous 180 days of daily detailed aggregated activity stats for a list, not including Automation activity.
   */
  struct GetListsIdActivity: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/activity"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public let count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public let offset: Int?

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique ID for the list. */
    public let listId: String

    public init(count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, listId: String) {
      self.count = count
      self.offset = offset
      self.fields = fields
      self.excludeFields = excludeFields
      self.listId = listId
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let count = self.count {
        params["count"] = String(describing: count)
      }
      if let offset = self.offset {
        params["offset"] = String(describing: offset)
      }
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ListActivity
    public typealias BodyType = Empty
  }
}
