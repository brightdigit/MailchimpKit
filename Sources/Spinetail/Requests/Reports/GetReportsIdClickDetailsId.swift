import Foundation
import PrchModel

public extension Reports {
  /**
   Get campaign link details

   Get click details for a specific link in a campaign.
   */
  struct GetReportsIdClickDetailsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reports/{campaign_id}/click-details/{link_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)").replacingOccurrences(of: "{" + "link_id" + "}", with: "\(linkId)")
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

    /** The id for the link. */
    public let linkId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, linkId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.campaignId = campaignId
      self.linkId = linkId
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

    public typealias SuccessType = ClickDetailReport
    public typealias BodyType = Empty
  }
}
