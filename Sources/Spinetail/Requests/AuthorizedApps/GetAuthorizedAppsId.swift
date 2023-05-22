import Foundation
import PrchModel

public extension AutomationsAutomationsAuthorizedApps {
  /**
   Get authorized app info

   Get information about a specific authorized application.
   */
  struct GetAuthorizedAppsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/authorized-apps/{app_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "app_id" + "}", with: "\(appId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The unique id for the connected authorized application. */
    public var appId: String

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

    // public static let service = APIService<Response>(id: "getAuthorizedAppsId", tag: "authorizedApps", method: "GET", path: "/authorized-apps/{app_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = AuthorizedApplicationsInnerModel
    public typealias BodyType = Empty
  }
}
