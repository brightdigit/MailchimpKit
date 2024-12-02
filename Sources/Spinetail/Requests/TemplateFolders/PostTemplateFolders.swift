import Foundation
import PrchModel

public extension TemplateFolders {
  /**
   Add template folder

   Create a new template folder.
   */
  struct PostTemplateFolders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/template-folders"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: TemplateFolder1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = TemplateFolder
    public typealias BodyType = TemplateFolder1

    public let body: TemplateFolder1
  }
}
