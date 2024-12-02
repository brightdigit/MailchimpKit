import Foundation
import PrchModel

public extension Automations {
  /**
   Pause automation emails

   Pause all emails in a specific classic automation workflow.
   */
  struct PostAutomationsIdActionsPauseAllEmails: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/actions/pause-all-emails"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the Automation workflow. */
    public let workflowId: String

    public init(workflowId: String) {
      self.workflowId = workflowId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
