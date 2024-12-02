import Foundation
import PrchModel

public extension Campaigns {
  /**
   Resend campaign

   Creates a Resend to Non-Openers version of this campaign. We will also check if this campaign meets the criteria for Resend to Non-Openers campaigns.
   */
  struct PostCampaignsIdActionsCreateResend: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/actions/create-resend"

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

    public typealias SuccessType = Campaign3
    public typealias BodyType = Empty
  }
}
