import Foundation
import PrchModel

/** The HTML and plain-text content for a campaign */
public struct CampaignContent1: Codable, Equatable, Content {
  public let archive: UploadArchive?

  /** The raw HTML for the campaign. */
  public let html: String?

  /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
  public let plainText: String?

  public let template: TemplateContent?

  /** When importing a campaign, the URL where the HTML lives. */
  public let url: String?

  /** Content options for [Multivariate CampaignsModel](https://mailchimp.com/help/about-multivariate-campaigns/). Each content option must provide HTML content and may optionally provide plain text. For campaigns not testing content, only one object should be provided. */
  public let variateContents: [VariateContentsInner1]?

  public init(archive: UploadArchive? = nil, html: String? = nil, plainText: String? = nil, template: TemplateContent? = nil, url: String? = nil, variateContents: [VariateContentsInner1]? = nil) {
    self.archive = archive
    self.html = html
    self.plainText = plainText
    self.template = template
    self.url = url
    self.variateContents = variateContents
  }

  public enum CodingKeys: String, CodingKey {
    case archive
    case html
    case plainText = "plain_text"
    case template
    case url
    case variateContents = "variate_contents"
  }
}
