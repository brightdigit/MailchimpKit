import Foundation
import PrchModel

public extension Templates {
  /**
   Update template

   Update the name, HTML, or `folder_id` of an existing template.
   */
  struct PatchTemplatesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/templates/{template_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "template_id" + "}", with: "\(templateId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the template. */
    public let templateId: String

    public init(body: TemplateInstance1, templateId: String) {
      self.body = body
      self.templateId = templateId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = TemplateInstance
    public typealias BodyType = TemplateInstance1

    public let body: TemplateInstance1
  }
}
