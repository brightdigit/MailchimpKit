import Foundation
import PrchModel

/** Information about a specific template. */
public struct TemplateInstance1: Codable, Equatable, Content {
  /** The raw HTML for the template. We  support the Mailchimp [Template Language](https://mailchimp.com/help/getting-started-with-mailchimps-template-language/) in any HTML code passed via the API. */
  public let html: String

  /** The name of the template. */
  public let name: String

  /** The id of the folder the template is currently in. */
  public let folderId: String?

  public init(html: String, name: String, folderId: String? = nil) {
    self.html = html
    self.name = name
    self.folderId = folderId
  }

  public enum CodingKeys: String, CodingKey {
    case html
    case name
    case folderId = "folder_id"
  }
}
