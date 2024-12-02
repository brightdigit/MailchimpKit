import Foundation
import PrchModel

/** A summary of the subscribers who were removed from an Automation workflow. */
public struct RemovedSubscribers: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a subscriber who was removed from an Automation workflow. */
  public let subscribers: [SubscriberRemovedFromAutomationWorkflow]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  /** A string that uniquely identifies an Automation workflow. */
  public let workflowId: String?

  public init(links: [ResourceLink]? = nil, subscribers: [SubscriberRemovedFromAutomationWorkflow]? = nil, totalItems: Int? = nil, workflowId: String? = nil) {
    self.links = links
    self.subscribers = subscribers
    self.totalItems = totalItems
    self.workflowId = workflowId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case subscribers
    case totalItems = "total_items"
    case workflowId = "workflow_id"
  }
}
