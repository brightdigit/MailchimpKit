import Foundation
import PrchModel

public extension Lists {
  /**
   Get segment info

   Get information about a specific segment.
   */
  struct GetListsIdSegmentsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments/{segment_id}"

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

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String, segmentId: String, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
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

    public typealias SuccessType = List7
    public typealias BodyType = Empty
  }
}
