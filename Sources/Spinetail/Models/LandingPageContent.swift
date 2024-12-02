import Foundation
import PrchModel

/** The HTML content for a landing page. */
public struct LandingPageContent: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The raw HTML for the landing page. */
  public let html: String?

  /** The JSON Structure for the landing page */
  public let json: String?

  public init(links: [ResourceLink]? = nil, html: String? = nil, json: String? = nil) {
    self.links = links
    self.html = html
    self.json = json
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case html
    case json
  }
}
