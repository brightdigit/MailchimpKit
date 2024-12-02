import Foundation
import PrchModel

public extension Reports {
  /**
   Get clicked link subscriber

   Get information about a specific subscriber who clicked a link in a specific campaign.
   */
  struct GetReportsIdClickDetailsIdMembersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reports/{campaign_id}/click-details/{link_id}/members/{subscriber_hash}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)").replacingOccurrences(of: "{" + "link_id" + "}", with: "\(linkId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
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

    /** The MD5 hash of the lowercase version of the list member's email address. */
    public let subscriberHash: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, linkId: String, subscriberHash: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.campaignId = campaignId
      self.linkId = linkId
      self.subscriberHash = subscriberHash
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

    public typealias SuccessType = ClickDetailMember
    public typealias BodyType = Empty
  }
}
