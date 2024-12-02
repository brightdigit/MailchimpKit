import Foundation
import PrchModel

public extension Campaigns {
  /**
   Delete campaign feedback message

   Remove a specific feedback message for a campaign.
   */
  struct DeleteCampaignsIdFeedbackId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/feedback/{feedback_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)").replacingOccurrences(of: "{" + "feedback_id" + "}", with: "\(feedbackId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the campaign. */
    public let campaignId: String

    /** The unique id for the feedback message. */
    public let feedbackId: String

    public init(campaignId: String, feedbackId: String) {
      self.campaignId = campaignId
      self.feedbackId = feedbackId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
