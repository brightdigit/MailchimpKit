import Foundation
import PrchModel

/** A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience. */
public struct MergeField: Codable, Equatable, Content {
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

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The default value for the merge field if `null`. */
  public let defaultValue: String?

  /** The order that the merge field displays on the list signup form. */
  public let displayOrder: Int?

  /** Extra text to help the subscriber fill out the form. */
  public let helpText: String?

  /** The ID that identifies this merge field's audience'. */
  public let listId: String?

  /** An unchanging id for the merge field. */
  public let mergeId: Int?

  /** The name of the merge field (audience field). */
  public let name: String?

  public let options: MergeFieldOptions?

  /** Whether the merge field is displayed on the signup form. */
  public let `public`: Bool?

  /** The boolean value if the merge field is required. */
  public let required: Bool?

  /** The merge tag used for Mailchimp campaigns and [adding contact information](https://mailchimp.com/developer/marketing/docs/merge-fields/#add-merge-data-to-contacts). */
  public let tag: String?

  /** The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field. */
  public let type: `Type`?

  public init(links: [ResourceLink]? = nil, defaultValue: String? = nil, displayOrder: Int? = nil, helpText: String? = nil, listId: String? = nil, mergeId: Int? = nil, name: String? = nil, options: MergeFieldOptions? = nil, public: Bool? = nil, required: Bool? = nil, tag: String? = nil, type: Type? = nil) {
    self.links = links
    self.defaultValue = defaultValue
    self.displayOrder = displayOrder
    self.helpText = helpText
    self.listId = listId
    self.mergeId = mergeId
    self.name = name
    self.options = options
    self.public = `public`
    self.required = required
    self.tag = tag
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case defaultValue = "default_value"
    case displayOrder = "display_order"
    case helpText = "help_text"
    case listId = "list_id"
    case mergeId = "merge_id"
    case name
    case options
    case `public`
    case required
    case tag
    case type
  }
}
