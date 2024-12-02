import Foundation
import PrchModel

public extension FileManager {
  /**
   Add file

   Upload a new image or file to the File Manager.
   */
  struct PostFileManagerFiles: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/files"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: GalleryFile1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = GalleryFile
    public typealias BodyType = GalleryFile1

    public let body: GalleryFile1
  }
}
