import Foundation
import PrchModel

public extension CampaignFolders {
  /**
   Add campaign folder

   Create a new campaign folder.
   */
  struct PostCampaignFolders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaign-folders"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: CampaignFolder1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = CampaignFolder
    public typealias BodyType = CampaignFolder1

    public let body: CampaignFolder1
  }
}
