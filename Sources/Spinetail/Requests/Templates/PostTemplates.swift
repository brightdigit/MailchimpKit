import Foundation
import PrchModel

public extension Templates {
  /**
   Add template

   Create a new template for the account. Only Classic templates are supported.
   */
  struct PostTemplates: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/templates"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: TemplateInstance1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = TemplateInstance
    public typealias BodyType = TemplateInstance1

    public let body: TemplateInstance1
  }
}
