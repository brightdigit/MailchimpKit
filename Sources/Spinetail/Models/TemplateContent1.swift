import Foundation
import PrchModel

/** Use this template to generate the HTML content for the campaign. */
public struct TemplateContent1: Codable, Equatable, Content {
  /** The id of the template to use. */
  public let id: Int

  /** Content for the sections of the template. Each key should be the unique [mc:edit area](https://mailchimp.com/help/create-editable-content-areas-with-mailchimps-template-language/) name from the template. */
  public let sections: [String: String]?

  public init(id: Int, sections: [String: String]? = nil) {
    self.id = id
    self.sections = sections
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case sections
  }
}
