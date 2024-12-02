import Foundation
import PrchModel

public extension Automations {
  /**
   Remove subscriber from workflow

   Remove a subscriber from a specific classic automation workflow. You can remove a subscriber at any point in an automation workflow, regardless of how many emails they've been sent from that workflow. Once they're removed, they can never be added back to the same workflow.
   */
  struct PostAutomationsIdRemovedSubscribers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/removed-subscribers"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the Automation workflow. */
    public let workflowId: String

    public init(body: SubscriberInAutomationQueue1, workflowId: String) {
      self.body = body
      self.workflowId = workflowId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = SubscriberRemovedFromAutomationWorkflow
    public typealias BodyType = SubscriberInAutomationQueue1

    public let body: SubscriberInAutomationQueue1
  }
}
