import Foundation
import PrchModel

/** An automation workflow */
public struct GetAutomationsIdEmailsIdQueue200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** A string that uniquely identifies an email in an Automation workflow. */
  public let emailId: String?

  /** An array of objects, each representing a subscriber queue for an email in an Automation workflow. */
  public let queue: [SubscriberInAutomationQueue]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  /** A string that uniquely identifies an Automation workflow. */
  public let workflowId: String?

  public init(links: [ResourceLink]? = nil, emailId: String? = nil, queue: [SubscriberInAutomationQueue]? = nil, totalItems: Int? = nil, workflowId: String? = nil) {
    self.links = links
    self.emailId = emailId
    self.queue = queue
    self.totalItems = totalItems
    self.workflowId = workflowId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case emailId = "email_id"
    case queue
    case totalItems = "total_items"
    case workflowId = "workflow_id"
  }
}
