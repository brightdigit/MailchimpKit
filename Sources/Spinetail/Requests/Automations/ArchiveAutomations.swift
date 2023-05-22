import Foundation
import PrchModel

public extension Automations {
  /**
   Archive automation

   Archiving will permanently end your automation and keep the report data. You’ll be able to replicate your archived automation, but you can’t restart it.
   */
  struct ArchiveAutomations: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/actions/archive"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the Automation workflow. */
    public var workflowId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "archiveAutomations", tag: "automations", method: "POST", path: "/automations/{workflow_id}/actions/archive", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
