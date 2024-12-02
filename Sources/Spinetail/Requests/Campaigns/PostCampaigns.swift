import Foundation
import PrchModel

public extension Campaigns {
  /**
   Add campaign

   Create a new Mailchimp campaign.
   */
  struct PostCampaigns: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: Campaign1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Campaign
    public typealias BodyType = Campaign1

    public let body: Campaign1
  }
}
