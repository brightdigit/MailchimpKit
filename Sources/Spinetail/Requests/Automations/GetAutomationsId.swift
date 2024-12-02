import Foundation
import PrchModel

public extension Automations {
  /**
   Get automation info

   Get a summary of an individual classic automation workflow's settings and content. The `trigger_settings` object returns information for the first email in the workflow.
   */
  struct GetAutomationsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique id for the Automation workflow. */
    public let workflowId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, workflowId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.workflowId = workflowId
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

    public typealias SuccessType = AutomationWorkflow
    public typealias BodyType = Empty
  }
}
