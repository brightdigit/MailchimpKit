import Foundation
import PrchModel

public struct VariateContentsInner1: Codable, Equatable, Content {
  /** The label used to identify the content option. */
  public let contentLabel: String

  public let archive: UploadArchive?

  /** The raw HTML for the campaign. */
  public let html: String?

  /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
  public let plainText: String?

  public let template: TemplateContent1?

  /** When importing a campaign, the URL for the HTML. */
  public let url: String?

  public init(contentLabel: String, archive: UploadArchive? = nil, html: String? = nil, plainText: String? = nil, template: TemplateContent1? = nil, url: String? = nil) {
    self.contentLabel = contentLabel
    self.archive = archive
    self.html = html
    self.plainText = plainText
    self.template = template
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case contentLabel = "content_label"
    case archive
    case html
    case plainText = "plain_text"
    case template
    case url
  }
}
