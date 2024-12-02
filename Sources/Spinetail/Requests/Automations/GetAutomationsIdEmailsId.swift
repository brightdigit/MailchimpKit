import Foundation
import PrchModel

public extension Automations {
  /**
   Get workflow email info

   Get information about an individual classic automation workflow email.
   */
  struct GetAutomationsIdEmailsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/emails/{workflow_email_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)").replacingOccurrences(of: "{" + "workflow_email_id" + "}", with: "\(workflowEmailId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique id for the Automation workflow. */
    public let workflowId: String

    /** The unique id for the Automation workflow email. */
    public let workflowEmailId: String

    public init(workflowId: String, workflowEmailId: String) {
      self.workflowId = workflowId
      self.workflowEmailId = workflowEmailId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = AutomationWorkflowEmail
    public typealias BodyType = Empty
  }
}
