import Foundation
import PrchModel

public extension Campaigns {
  /**
   Add campaign feedback

   Add feedback on a specific campaign.
   */
  struct PostCampaignsIdFeedback: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/feedback"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the campaign. */
    public let campaignId: String

    public init(body: CampaignFeedback1, campaignId: String) {
      self.body = body
      self.campaignId = campaignId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = CampaignFeedback2
    public typealias BodyType = CampaignFeedback1

    public let body: CampaignFeedback1
  }
}
