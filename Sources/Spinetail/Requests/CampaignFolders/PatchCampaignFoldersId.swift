import Foundation
import PrchModel

public extension AutomationsAutomationsCampaignFolders {
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
    public var folderId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchCampaignFoldersId", tag: "campaignFolders", method: "PATCH", path: "/campaign-folders/{folder_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = CampaignFolderModel
    public typealias BodyType = CampaignFolder1Model

    public let body: CampaignFolder1Model
  }
}
