import Foundation
import PrchModel

/** A summary of the emails in an Automation workflow. */
public struct AutomationEmails: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an email in an Automation workflow. */
  public let emails: [AutomationWorkflowEmail]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, emails: [AutomationWorkflowEmail]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.emails = emails
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case emails
    case totalItems = "total_items"
  }
}
