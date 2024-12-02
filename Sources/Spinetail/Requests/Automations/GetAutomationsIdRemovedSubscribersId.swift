import Foundation
import PrchModel

public extension Automations {
  /**
   Get subscriber removed from workflow

   Get information about a specific subscriber who was removed from a classic automation workflow.
   */
  struct GetAutomationsIdRemovedSubscribersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/removed-subscribers/{subscriber_hash}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique id for the Automation workflow. */
    public let workflowId: String

    /** The MD5 hash of the lowercase version of the list member's email address. */
    public let subscriberHash: String

    public init(workflowId: String, subscriberHash: String) {
      self.workflowId = workflowId
      self.subscriberHash = subscriberHash
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = SubscriberRemovedFromAutomationWorkflow
    public typealias BodyType = Empty
  }
}
