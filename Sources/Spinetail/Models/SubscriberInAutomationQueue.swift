import Foundation
import PrchModel

/** Information about subscribers in an Automation email queue. */
public struct SubscriberInAutomationQueue: Codable, Equatable, Content {
  /** The list member's email address. */
  public let emailAddress: String

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** A string that uniquely identifies an email in an Automation workflow. */
  public let emailId: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public let id: String?

  /** A string that uniquely identifies a list. */
  public let listId: String?

  /** The date and time of the next send for the workflow email in ISO 8601 format. */
  public let nextSend: MailchimpOptionalDate

  /** A string that uniquely identifies an Automation workflow. */
  public let workflowId: String?

  public init(emailAddress: String, links: [ResourceLink]? = nil, emailId: String? = nil, id: String? = nil, listId: String? = nil, nextSend: MailchimpOptionalDate, workflowId: String? = nil) {
    self.emailAddress = emailAddress
    self.links = links
    self.emailId = emailId
    self.id = id
    self.listId = listId
    self.nextSend = nextSend
    self.workflowId = workflowId
  }

  public enum CodingKeys: String, CodingKey {
    case emailAddress = "email_address"
    case links = "_links"
    case emailId = "email_id"
    case id
    case listId = "list_id"
    case nextSend = "next_send"
    case workflowId = "workflow_id"
  }
}
