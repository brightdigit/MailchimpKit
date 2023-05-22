import Foundation
import PrchModel

public extension AutomationsAutomationsCampaigns {
  /**
   Schedule campaign

   Schedule a campaign for delivery. If you're using Multivariate Campaigns to test send times or sending RSS Campaigns, use the send action instead.
   */
  struct PostCampaignsIdActionsSchedule: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/actions/schedule"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the campaign. */
    public var campaignId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postCampaignsIdActionsSchedule", tag: "campaigns", method: "POST", path: "/campaigns/{campaign_id}/actions/schedule", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = PostCampaignsIdActionsScheduleRequestModel

    public let body: PostCampaignsIdActionsScheduleRequestModel
  }
}
