import Foundation
import PrchModel

public extension Reports {
  /**
   List abuse reports

   Get a list of abuse complaints for a specific campaign.
   */
  struct GetReportsIdAbuseReportsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reports/{campaign_id}/abuse-reports"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)")
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

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.campaignId = campaignId
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

    public typealias SuccessType = AbuseComplaints1
    public typealias BodyType = Empty
  }
}
