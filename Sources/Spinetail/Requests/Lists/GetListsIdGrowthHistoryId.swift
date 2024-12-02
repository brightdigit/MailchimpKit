import Foundation
import PrchModel

public extension Lists {
  /**
   Get growth history by month

   Get a summary of a specific list's growth activity for a specific month and year.
   */
  struct GetListsIdGrowthHistoryId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/growth-history/{month}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "month" + "}", with: "\(month)")
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

    /** A specific month of list growth history. */
    public let month: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String, month: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.listId = listId
      self.month = month
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

    public typealias SuccessType = GrowthHistory
    public typealias BodyType = Empty
  }
}
