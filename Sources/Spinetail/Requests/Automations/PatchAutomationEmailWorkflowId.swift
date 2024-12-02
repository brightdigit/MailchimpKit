import Foundation
import PrchModel

public extension Automations {
  /**
   Update workflow email

   Update settings for a classic automation workflow email.  Only works with workflows of type: abandonedBrowse, abandonedCart, emailFollowup, or singleWelcome.
   */
  struct PatchAutomationEmailWorkflowId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/emails/{workflow_email_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)").replacingOccurrences(of: "{" + "workflow_email_id" + "}", with: "\(workflowEmailId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the Automation workflow. */
    public let workflowId: String

    /** The unique id for the Automation workflow email. */
    public let workflowEmailId: String

    public init(body: UpdateInformationAboutaSpecificWorkflowEmail, workflowId: String, workflowEmailId: String) {
      self.body = body
      self.workflowId = workflowId
      self.workflowEmailId = workflowEmailId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = AutomationWorkflowEmail
    public typealias BodyType = UpdateInformationAboutaSpecificWorkflowEmail

    public let body: UpdateInformationAboutaSpecificWorkflowEmail
  }
}
