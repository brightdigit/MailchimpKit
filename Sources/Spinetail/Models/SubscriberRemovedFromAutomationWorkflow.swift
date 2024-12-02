import Foundation
import PrchModel

/** A summary of a subscriber removed from an Automation workflow. */
public struct SubscriberRemovedFromAutomationWorkflow: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The list member's email address. */
  public let emailAddress: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public let id: String?

  /** A string that uniquely identifies a list. */
  public let listId: String?

  /** A string that uniquely identifies an Automation workflow. */
  public let workflowId: String?

  public init(links: [ResourceLink]? = nil, emailAddress: String? = nil, id: String? = nil, listId: String? = nil, workflowId: String? = nil) {
    self.links = links
    self.emailAddress = emailAddress
    self.id = id
    self.listId = listId
    self.workflowId = workflowId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case emailAddress = "email_address"
    case id
    case listId = "list_id"
    case workflowId = "workflow_id"
  }
}
