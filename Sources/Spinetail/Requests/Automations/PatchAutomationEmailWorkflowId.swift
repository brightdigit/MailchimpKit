import Foundation
import PrchModel

public extension AutomationsAutomationsAutomations {
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
    public var workflowId: String

    /** The unique id for the Automation workflow email. */
    public var workflowEmailId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchAutomationEmailWorkflowId", tag: "automations", method: "PATCH", path: "/automations/{workflow_id}/emails/{workflow_email_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = AutomationWorkflowEmailModel
    public typealias BodyType = UpdateInformationAboutaSpecificWorkflowEmailModel

    public let body: UpdateInformationAboutaSpecificWorkflowEmailModel
  }
}
