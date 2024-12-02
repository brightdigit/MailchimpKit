import Foundation
import PrchModel

public extension Campaigns {
  /**
   Cancel campaign

   Cancel a Regular or Plain-Text Campaign after you send, before all of your recipients receive it. This feature is included with Mailchimp Pro.
   */
  struct PostCampaignsIdActionsCancelSend: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/actions/cancel-send"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the campaign. */
    public let campaignId: String

    public init(campaignId: String) {
      self.campaignId = campaignId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
