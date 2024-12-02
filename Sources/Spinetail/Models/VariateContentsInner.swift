import Foundation
import PrchModel

public struct VariateContentsInner: Codable, Equatable, Content {
  /** Label used to identify the content option. */
  public let contentLabel: String?

  /** The raw HTML for the campaign. */
  public let html: String?

  /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
  public let plainText: String?

  public init(contentLabel: String? = nil, html: String? = nil, plainText: String? = nil) {
    self.contentLabel = contentLabel
    self.html = html
    self.plainText = plainText
  }

  public enum CodingKeys: String, CodingKey {
    case contentLabel = "content_label"
    case html
    case plainText = "plain_text"
  }
}
