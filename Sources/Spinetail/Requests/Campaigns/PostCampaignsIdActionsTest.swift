import Foundation
import PrchModel

public extension Campaigns {
  /**
   Send test email

   Send a test email.
   */
  struct PostCampaignsIdActionsTest: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/actions/test"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the campaign. */
    public let campaignId: String

    public init(body: PostCampaignsIdActionsTestRequest, campaignId: String) {
      self.body = body
      self.campaignId = campaignId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = PostCampaignsIdActionsTestRequest

    public let body: PostCampaignsIdActionsTestRequest
  }
}
