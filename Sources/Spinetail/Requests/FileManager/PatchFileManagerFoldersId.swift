import Foundation
import PrchModel

public extension AutomationsAutomationsFileManager {
  /**
   Update folder

   Update a specific File Manager folder.
   */
  struct PatchFileManagerFoldersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/folders/{folder_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "folder_id" + "}", with: "\(folderId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the File Manager folder. */
    public var folderId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchFileManagerFoldersId", tag: "fileManager", method: "PATCH", path: "/file-manager/folders/{folder_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = GalleryFolderModel
    public typealias BodyType = GalleryFolder1Model

    public let body: GalleryFolder1Model
  }
}
