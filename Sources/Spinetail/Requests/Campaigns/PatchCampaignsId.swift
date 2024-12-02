import Foundation
import PrchModel

public extension Campaigns {
  /**
   Update campaign settings

   Update some or all of the settings for a specific campaign.
   */
  struct PatchCampaignsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the campaign. */
    public let campaignId: String

    public init(body: Campaign2, campaignId: String) {
      self.body = body
      self.campaignId = campaignId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Campaign
    public typealias BodyType = Campaign2

    public let body: Campaign2
  }
}
