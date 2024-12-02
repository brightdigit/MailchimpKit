import Foundation
import PrchModel

/** A list an account's available templates. */
public struct TemplatesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** All of an account's saved or custom templates. */
  public let templates: [TemplateInstance]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, templates: [TemplateInstance]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.templates = templates
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case templates
    case totalItems = "total_items"
  }
}
