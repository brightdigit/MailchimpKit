import Foundation
import PrchModel

public extension Lists {
  /**
   View recent activity 50

   Get the last 50 events of a member's activity on a specific list, including opens, clicks, and unsubscribes.
   */
  struct GetListsIdMembersIdActivity: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/activity"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id. */
    public let subscriberHash: String

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** A comma seperated list of actions to return. */
    public let action: [String]?

    public init(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, action: [String]? = nil) {
      self.listId = listId
      self.subscriberHash = subscriberHash
      self.fields = fields
      self.excludeFields = excludeFields
      self.action = action
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let action = self.action?.joined(separator: ",") {
        params["action"] = String(describing: action)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = MemberActivityEvents
    public typealias BodyType = Empty
  }
}
