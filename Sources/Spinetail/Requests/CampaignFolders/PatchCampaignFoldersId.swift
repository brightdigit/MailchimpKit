import Foundation
import PrchModel

public extension CampaignFolders {
  /**
   Update campaign folder

   Update a specific folder used to organize campaigns.
   */
  struct PatchCampaignFoldersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaign-folders/{folder_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "folder_id" + "}", with: "\(folderId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the campaign folder. */
    public let folderId: String

    public init(body: CampaignFolder1, folderId: String) {
      self.body = body
      self.folderId = folderId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = CampaignFolder
    public typealias BodyType = CampaignFolder1

    public let body: CampaignFolder1
  }
}
