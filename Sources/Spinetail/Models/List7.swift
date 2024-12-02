import Foundation
import PrchModel

/** Information about a specific segment. */
public struct List7: Codable, Equatable, Content {
  /** The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs). */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case saved
    case `static`
    case fuzzy
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The date and time the segment was created in ISO 8601 format. */
  public let createdAt: MailchimpOptionalDate

  /** The unique id for the segment. */
  public let id: Int?

  /** The list id. */
  public let listId: String?

  /** The number of active subscribers currently included in the segment. */
  public let memberCount: Int?

  /** The name of the segment. */
  public let name: String?

  public let options: Conditions?

  /** The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs). */
  public let type: `Type`?

  /** The date and time the segment was last updated in ISO 8601 format. */
  public let updatedAt: MailchimpOptionalDate

  public init(links: [ResourceLink]? = nil, createdAt: MailchimpOptionalDate, id: Int? = nil, listId: String? = nil, memberCount: Int? = nil, name: String? = nil, options: Conditions? = nil, type: Type? = nil, updatedAt: MailchimpOptionalDate) {
    self.links = links
    self.createdAt = createdAt
    self.id = id
    self.listId = listId
    self.memberCount = memberCount
    self.name = name
    self.options = options
    self.type = type
    self.updatedAt = updatedAt
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case createdAt = "created_at"
    case id
    case listId = "list_id"
    case memberCount = "member_count"
    case name
    case options
    case type
    case updatedAt = "updated_at"
  }
}
