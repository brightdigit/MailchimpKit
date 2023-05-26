import Foundation
import PrchModel

public extension Reports {
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
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique id for the campaign. */
    public let campaignId: String

    /** The MD5 hash of the lowercase version of the list member's email address. */
    public let subscriberHash: String

    /** Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let since: String?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, subscriberHash: String, since: String? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.campaignId = campaignId
      self.subscriberHash = subscriberHash
      self.since = since
    }

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

    public typealias SuccessType = EmailActivity
    public typealias BodyType = Empty
  }
}
