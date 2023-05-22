import Foundation

import PrchModel
/** Information about a specific template. */
public struct TemplateInstanceModel: Codable, Equatable, Content {
  /** How the template's content is put together. */
  public enum AutomationsAutomationsContentType: String, Codable, Equatable, CaseIterable {
    case template
    case multichannel
    case html
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** User templates are not 'deleted,' but rather marked as 'inactive.' Returns whether the template is still active. */
  public var active: Bool?

  /** If available, the category the template is listed in. */
  public var category: String?

  /** How the template's content is put together. */
  public var contentType: ContentType?

  /** The login name for template's creator. */
  public var createdBy: String?

  /** The date and time the template was created in ISO 8601 format. */
  public var dateCreated: DateTime?

  /** The date and time the template was edited in ISO 8601 format. */
  public var dateEdited: DateTime?

  /** Whether the template uses the drag and drop editor. */
  public var dragAndDrop: Bool?

  /** The login name who last edited the template. */
  public var editedBy: String?

  /** The id of the folder the template is currently in. */
  public var folderId: String?

  /** The individual id for the template. */
  public var id: Int?

  /** The name of the template. */
  public var name: String?

  /** Whether the template contains media queries to make it responsive. */
  public var responsive: Bool?

  /** The URL used for [template sharing](https://mailchimp.com/help/share-a-template/). */
  public var shareURL: String?

  /** If available, the URL for a thumbnail of the template. */
  public var thumbnail: String?

  /** The type of template (user, base, or gallery). */
  public var type: String?

  public init(links: [ResourceLinkModel]? = nil, active: Bool? = nil, category: String? = nil, contentType: ContentType? = nil, createdBy: String? = nil, dateCreated: DateTime? = nil, dateEdited: DateTime? = nil, dragAndDrop: Bool? = nil, editedBy: String? = nil, folderId: String? = nil, id: Int? = nil, name: String? = nil, responsive: Bool? = nil, shareURL: String? = nil, thumbnail: String? = nil, type: String? = nil) {
    self.links = links
    self.active = active
    self.category = category
    self.contentType = contentType
    self.createdBy = createdBy
    self.dateCreated = dateCreated
    self.dateEdited = dateEdited
    self.dragAndDrop = dragAndDrop
    self.editedBy = editedBy
    self.folderId = folderId
    self.id = id
    self.name = name
    self.responsive = responsive
    self.shareURL = shareURL
    self.thumbnail = thumbnail
    self.type = type
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case active
    case category
    case contentType = "content_type"
    case createdBy = "created_by"
    case dateCreated = "date_created"
    case dateEdited = "date_edited"
    case dragAndDrop = "drag_and_drop"
    case editedBy = "edited_by"
    case folderId = "folder_id"
    case id
    case name
    case responsive
    case shareURL = "share_url"
    case thumbnail
    case type
  }
}
