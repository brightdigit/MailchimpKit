import Foundation
import PrchModel

public extension Reports {
  /**
   Get campaign recipient info

   Get information about a specific campaign recipient.
   */
  struct GetReportsIdSentToId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reports/{campaign_id}/sent-to/{subscriber_hash}"

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

    public typealias SuccessType = SentTo
    public typealias BodyType = Empty
  }
}
