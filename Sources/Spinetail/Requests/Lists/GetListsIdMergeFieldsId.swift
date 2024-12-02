import Foundation
import PrchModel

public extension Lists {
  /**
   Get merge field

   Get information about a specific merge field.
   */
  struct GetListsIdMergeFieldsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/merge-fields/{merge_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "merge_id" + "}", with: "\(mergeId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The id for the merge field. */
    public let mergeId: String

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    public init(listId: String, mergeId: String, excludeFields: [String]? = nil, fields: [String]? = nil) {
      self.listId = listId
      self.mergeId = mergeId
      self.excludeFields = excludeFields
      self.fields = fields
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = MergeField
    public typealias BodyType = Empty
  }
}
