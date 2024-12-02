import Foundation
import PrchModel

public extension Automations {
  /**
   Get automated email subscriber

   Get information about a specific subscriber in a classic automation email queue.
   */
  struct GetAutomationsIdEmailsIdQueueId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/emails/{workflow_email_id}/queue/{subscriber_hash}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)").replacingOccurrences(of: "{" + "workflow_email_id" + "}", with: "\(workflowEmailId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique id for the Automation workflow. */
    public let workflowId: String

    /** The unique id for the Automation workflow email. */
    public let workflowEmailId: String

    /** The MD5 hash of the lowercase version of the list member's email address. */
    public let subscriberHash: String

    public init(workflowId: String, workflowEmailId: String, subscriberHash: String) {
      self.workflowId = workflowId
      self.workflowEmailId = workflowEmailId
      self.subscriberHash = subscriberHash
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = SubscriberInAutomationQueue2
    public typealias BodyType = Empty
  }
}
