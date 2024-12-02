import Foundation
import PrchModel

public extension SearchCampaigns {
  /**
   Search campaigns

   Search all campaigns for the specified query terms.
   */
  struct GetSearchCampaigns: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/search-campaigns"

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

    /** The search query used to filter results. */
    public let query: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, query: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.query = query
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
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = CampaignsModel
    public typealias BodyType = Empty
  }
}
