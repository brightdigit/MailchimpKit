import Foundation
import PrchModel

/** Trigger settings for the Automation. */
public struct AutomationTrigger1: Codable, Equatable, Content {
  /** The type of Automation workflow. Currently only supports 'abandonedCart'. */
  public let workflowType: String

  public init(workflowType: String) {
    self.workflowType = workflowType
  }

  public enum CodingKeys: String, CodingKey {
    case workflowType = "workflow_type"
  }
}
