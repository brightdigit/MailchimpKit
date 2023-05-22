import Foundation
import PrchModel

public extension AutomationsAutomationsReports {
  /**
   Get subscriber email activity

   Get a specific list member's activity in a campaign including opens, clicks, and bounces.
   */
  struct GetReportsIdEmailActivityId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reports/{campaign_id}/email-activity/{subscriber_hash}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The unique id for the campaign. */
    public var campaignId: String

    /** The MD5 hash of the lowercase version of the list member's email address. */
    public var subscriberHash: String

    /** Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var since: String?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let since = self.since {
        params["since"] = String(describing: since)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getReportsIdEmailActivityId", tag: "reports", method: "GET", path: "/reports/{campaign_id}/email-activity/{subscriber_hash}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = EmailActivityModel
    public typealias BodyType = Empty
  }
}
