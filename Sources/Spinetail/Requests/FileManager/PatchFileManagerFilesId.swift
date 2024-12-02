import Foundation
import PrchModel

public extension FileManager {
  /**
   Update file

   Update a file in the File Manager.
   */
  struct PatchFileManagerFilesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/files/{file_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "file_id" + "}", with: "\(fileId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the File Manager file. */
    public let fileId: String

    public init(body: GalleryFile2, fileId: String) {
      self.body = body
      self.fileId = fileId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = GalleryFile
    public typealias BodyType = GalleryFile2

    public let body: GalleryFile2
  }
}
