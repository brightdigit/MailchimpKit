import Foundation
import PrchModel

public extension ConnectedSites {
  /**
   Get connected site

   Get information about a specific connected site.
   */
  struct GetConnectedSitesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/connected-sites/{connected_site_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "connected_site_id" + "}", with: "\(connectedSiteId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique identifier for the site. */
    public let connectedSiteId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, connectedSiteId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.connectedSiteId = connectedSiteId
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

    public typealias SuccessType = ConnectedSite
    public typealias BodyType = Empty
  }
}
