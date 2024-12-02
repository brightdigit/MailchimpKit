import Foundation
import PrchModel

/** Information about subscribers in an Automation email queue. */
public struct SubscriberInAutomationQueue2: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The list member's email address. */
  public let emailAddress: String?

  /** A string that uniquely identifies an email in an Automation workflow. */
  public let emailId: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public let id: String?

  /** A string that uniquely identifies a list. */
  public let listId: String?

  /** The status of the list used, namely if it's deleted or disabled. */
  public let listIsActive: Bool?

  /** The date and time of the next send for the workflow email in ISO 8601 format. */
  public let nextSend: MailchimpOptionalDate

  /** A string that uniquely identifies an Automation workflow. */
  public let workflowId: String?

  public init(links: [ResourceLink]? = nil, emailAddress: String? = nil, emailId: String? = nil, id: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, nextSend: MailchimpOptionalDate, workflowId: String? = nil) {
    self.links = links
    self.emailAddress = emailAddress
    self.emailId = emailId
    self.id = id
    self.listId = listId
    self.listIsActive = listIsActive
    self.nextSend = nextSend
    self.workflowId = workflowId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case emailAddress = "email_address"
    case emailId = "email_id"
    case id
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case nextSend = "next_send"
    case workflowId = "workflow_id"
  }
}
