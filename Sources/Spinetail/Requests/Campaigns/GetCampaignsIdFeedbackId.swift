import Foundation
import PrchModel

public extension Campaigns {
  /**
   Get campaign feedback message

   Get a specific feedback message from a campaign.
   */
  struct GetCampaignsIdFeedbackId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/feedback/{feedback_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)").replacingOccurrences(of: "{" + "feedback_id" + "}", with: "\(feedbackId)")
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

    /** The unique id for the feedback message. */
    public let feedbackId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, feedbackId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.campaignId = campaignId
      self.feedbackId = feedbackId
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

    public typealias SuccessType = CampaignFeedback2
    public typealias BodyType = Empty
  }
}
