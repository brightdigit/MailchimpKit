import Foundation
import PrchModel

/** A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience. */
public struct MergeField1: Codable, Equatable, Content {
  /** The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case text
    case number
    case address
    case phone
    case date
    case url
    case imageurl
    case radio
    case dropdown
    case birthday
    case zip
  }

  /** The name of the merge field (audience field). */
  public let name: String

  /** The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field. */
  public let type: `Type`

  /** The default value for the merge field if `null`. */
  public let defaultValue: String?

  /** The order that the merge field displays on the list signup form. */
  public let displayOrder: Int?

  /** Extra text to help the subscriber fill out the form. */
  public let helpText: String?

  public let options: MergeFieldOptions1?

  /** Whether the merge field is displayed on the signup form. */
  public let `public`: Bool?

  /** Whether the merge field is required to import a contact. */
  public let required: Bool?

  /** The merge tag used for Mailchimp campaigns and [adding contact information](https://mailchimp.com/developer/marketing/docs/merge-fields/#add-merge-data-to-contacts). */
  public let tag: String?

  public init(name: String, type: Type, defaultValue: String? = nil, displayOrder: Int? = nil, helpText: String? = nil, options: MergeFieldOptions1? = nil, public: Bool? = nil, required: Bool? = nil, tag: String? = nil) {
    self.name = name
    self.type = type
    self.defaultValue = defaultValue
    self.displayOrder = displayOrder
    self.helpText = helpText
    self.options = options
    self.public = `public`
    self.required = required
    self.tag = tag
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case type
    case defaultValue = "default_value"
    case displayOrder = "display_order"
    case helpText = "help_text"
    case options
    case `public`
    case required
    case tag
  }
}
