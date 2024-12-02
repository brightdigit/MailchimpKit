import Foundation
import PrchModel

public extension Templates {
  /**
   Delete template

   Delete a specific template.
   */
  struct DeleteTemplatesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/templates/{template_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "template_id" + "}", with: "\(templateId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the template. */
    public let templateId: String

    public init(templateId: String) {
      self.templateId = templateId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
