import Foundation
import PrchModel

public extension AutomationsAutomationsAutomations {
  /**
   Start automation emails

   Start all emails in a classic automation workflow.
   */
  struct PostAutomationsIdActionsStartAllEmails: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/actions/start-all-emails"

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

    // public static let service = APIService<Response>(id: "postAutomationsIdActionsStartAllEmails", tag: "automations", method: "POST", path: "/automations/{workflow_id}/actions/start-all-emails", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
