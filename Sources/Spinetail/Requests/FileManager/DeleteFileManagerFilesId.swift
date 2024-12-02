import Foundation
import PrchModel

public extension FileManager {
  /**
   Delete file

   Remove a specific file from the File Manager.
   */
  struct DeleteFileManagerFilesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/files/{file_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "file_id" + "}", with: "\(fileId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the File Manager file. */
    public let fileId: String

    public init(fileId: String) {
      self.fileId = fileId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
