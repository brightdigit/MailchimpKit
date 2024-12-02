import Foundation
import PrchModel

public extension Templates {
  /**
   Get template info

   Get information about a specific template.
   */
  struct GetTemplatesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/templates/{template_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "template_id" + "}", with: "\(templateId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique id for the template. */
    public let templateId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, templateId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.templateId = templateId
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = TemplateInstance
    public typealias BodyType = Empty
  }
}
