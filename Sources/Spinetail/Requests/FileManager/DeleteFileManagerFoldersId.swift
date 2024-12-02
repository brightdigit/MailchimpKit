import Foundation
import PrchModel

public extension FileManager {
  /**
   Delete folder

   Delete a specific folder in the File Manager.
   */
  struct DeleteFileManagerFoldersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/folders/{folder_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "folder_id" + "}", with: "\(folderId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the File Manager folder. */
    public let folderId: String

    public init(folderId: String) {
      self.folderId = folderId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
