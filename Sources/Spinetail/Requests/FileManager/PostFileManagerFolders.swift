import Foundation
import PrchModel

public extension FileManager {
  /**
   Add folder

   Create a new folder in the File Manager.
   */
  struct PostFileManagerFolders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/folders"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: GalleryFolder1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = GalleryFolder
    public typealias BodyType = GalleryFolder1

    public let body: GalleryFolder1
  }
}
