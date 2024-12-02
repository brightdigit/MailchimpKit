import Foundation
import PrchModel

public extension Lists {
  /**
   List members in segment

   Get information about members in a saved segment.
   */
  struct GetListsIdSegmentsIdMembers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments/{segment_id}/members"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(segmentId)")
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

    /** The unique ID for the list. */
    public let listId: String

    /** The unique id for the segment. */
    public let segmentId: String

    /** Include cleaned members in response */
    public let includeCleaned: Bool?

    /** Include transactional members in response */
    public let includeTransactional: Bool?

    /** Include unsubscribed members in response */
    public let includeUnsubscribed: Bool?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, listId: String, segmentId: String, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.listId = listId
      self.segmentId = segmentId
      self.includeCleaned = includeCleaned
      self.includeTransactional = includeTransactional
      self.includeUnsubscribed = includeUnsubscribed
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
      if let includeCleaned = self.includeCleaned {
        params["include_cleaned"] = String(describing: includeCleaned)
      }
      if let includeTransactional = self.includeTransactional {
        params["include_transactional"] = String(describing: includeTransactional)
      }
      if let includeUnsubscribed = self.includeUnsubscribed {
        params["include_unsubscribed"] = String(describing: includeUnsubscribed)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = SegmentMembers
    public typealias BodyType = Empty
  }
}
