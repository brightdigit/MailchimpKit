import Foundation
import PrchModel

/** An array of objects, each representing an Automation workflow. */
public struct GetAutomations200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an Automation workflow. */
  public let automations: [AutomationWorkflow]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, automations: [AutomationWorkflow]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.automations = automations
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case automations
    case totalItems = "total_items"
  }
}
