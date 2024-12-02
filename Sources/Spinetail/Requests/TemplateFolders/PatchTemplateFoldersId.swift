import Foundation
import PrchModel

public extension TemplateFolders {
  /**
   Update template folder

   Update a specific folder used to organize templates.
   */
  struct PatchTemplateFoldersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/template-folders/{folder_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "folder_id" + "}", with: "\(folderId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the template folder. */
    public let folderId: String

    public init(body: TemplateFolder1, folderId: String) {
      self.body = body
      self.folderId = folderId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = TemplateFolder
    public typealias BodyType = TemplateFolder1

    public let body: TemplateFolder1
  }
}
