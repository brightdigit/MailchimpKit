import Foundation
import PrchModel

public extension FileManager {
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
    public let folderId: String

    public init(body: GalleryFolder1, folderId: String) {
      self.body = body
      self.folderId = folderId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = GalleryFolder
    public typealias BodyType = GalleryFolder1

    public let body: GalleryFolder1
  }
}
