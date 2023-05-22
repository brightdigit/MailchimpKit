import Foundation

import PrchModel
/** A summary of the emails in an Automation workflow. */
public struct AutomationEmailsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing an email in an Automation workflow. */
  public var emails: [AutomationWorkflowEmailModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, emails: [AutomationWorkflowEmailModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.emails = emails
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case emails
    case totalItems = "total_items"
  }
}
