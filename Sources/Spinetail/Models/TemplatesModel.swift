import Foundation

import PrchModel
/** A list an account's available templates. */
public struct TemplatesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** All of an account's saved or custom templates. */
  public var templates: [TemplateInstanceModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, templates: [TemplateInstanceModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.templates = templates
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case templates
    case totalItems = "total_items"
  }
}
