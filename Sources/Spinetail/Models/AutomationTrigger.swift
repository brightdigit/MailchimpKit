import Foundation
import PrchModel

/** Available triggers for Automation workflows. */
public struct AutomationTrigger: Codable, Equatable, Content {
  /** The type of Automation workflow. */
  public enum WorkflowType: String, Codable, Equatable, CaseIterable {
    case abandonedBrowse
    case abandonedCart
    case api
    case bestCustomers
    case categoryFollowup
    case dateAdded
    case emailFollowup
    case emailSeries
    case groupAdd
    case groupRemove
    case mandrill
    case productFollowup
    case purchaseFollowup
    case recurringEvent
    case specialEvent
    case visitUrl
    case welcomeSeries
  }

  /** The type of Automation workflow. */
  public let workflowType: WorkflowType

  public let runtime: AutomationWorkflowRuntimeSettings?

  /** The number of emails in the Automation workflow. */
  public let workflowEmailsCount: Int?

  /** The title of the workflow type. */
  public let workflowTitle: String?

  public init(workflowType: WorkflowType, runtime: AutomationWorkflowRuntimeSettings? = nil, workflowEmailsCount: Int? = nil, workflowTitle: String? = nil) {
    self.workflowType = workflowType
    self.runtime = runtime
    self.workflowEmailsCount = workflowEmailsCount
    self.workflowTitle = workflowTitle
  }

  public enum CodingKeys: String, CodingKey {
    case workflowType = "workflow_type"
    case runtime
    case workflowEmailsCount = "workflow_emails_count"
    case workflowTitle = "workflow_title"
  }
}
