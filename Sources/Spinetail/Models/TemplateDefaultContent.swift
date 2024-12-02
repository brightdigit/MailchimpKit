import Foundation
import PrchModel

/** Default content for a template. */
public struct TemplateDefaultContent: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The sections that you can edit in the template, including each section's default content. */
  public let sections: [String: String]?

  public init(links: [ResourceLink]? = nil, sections: [String: String]? = nil) {
    self.links = links
    self.sections = sections
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case sections
  }
}
