import Foundation
import PrchModel

public extension Automations {
  /**
   List automated emails

   Get a summary of the emails in a classic automation workflow.
   */
  struct GetAutomationsIdEmails: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/emails"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique id for the Automation workflow. */
    public let workflowId: String

    public init(workflowId: String) {
      self.workflowId = workflowId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = AutomationEmails
    public typealias BodyType = Empty
  }
}
