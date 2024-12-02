import Foundation
import PrchModel

public extension Lists {
  /**
   View recent activity

   Get a member's activity on a specific list, including opens, clicks, and unsubscribes.
   */
  struct GetListsIdMembersIdActivityFeed: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/activity-feed"

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

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public let count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public let offset: Int?

    /** A comma-separated list of activity filters that correspond to a set of activity types, e.g "?activity_filters=open,bounce,click". */
    public let activityFilters: [String]?

    public init(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, activityFilters: [String]? = nil) {
      self.listId = listId
      self.subscriberHash = subscriberHash
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.activityFilters = activityFilters
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
      if let activityFilters = self.activityFilters?.joined(separator: ",") {
        params["activity_filters"] = String(describing: activityFilters)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = MemberActivityEvents1
    public typealias BodyType = Empty
  }
}
