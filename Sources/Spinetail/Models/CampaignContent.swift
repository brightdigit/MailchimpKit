import Foundation
import PrchModel

/** The HTML and plain-text content for a campaign. */
public struct CampaignContent: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The Archive HTML for the campaign. */
  public let archiveHtml: String?

  /** The raw HTML for the campaign. */
  public let html: String?

  /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
  public let plainText: String?

  /** Content options for multivariate campaigns. */
  public let variateContents: [VariateContentsInner]?

  public init(links: [ResourceLink]? = nil, archiveHtml: String? = nil, html: String? = nil, plainText: String? = nil, variateContents: [VariateContentsInner]? = nil) {
    self.links = links
    self.archiveHtml = archiveHtml
    self.html = html
    self.plainText = plainText
    self.variateContents = variateContents
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case archiveHtml = "archive_html"
    case html
    case plainText = "plain_text"
    case variateContents = "variate_contents"
  }
}
