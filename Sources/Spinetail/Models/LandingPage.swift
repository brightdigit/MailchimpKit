import Foundation
import PrchModel

/** A summary of an individual landing page's settings and content. */
public struct LandingPage: Codable, Equatable, Content {
  /** The status of this landing page. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case published
    case unpublished
    case draft
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The time this landing page was created. */
  public let createdAt: MailchimpOptionalDate

  /** Created by mobile or web */
  public let createdBySource: String?

  /** The description of this landing page. */
  public let description: String?

  /** A string that uniquely identifies this landing page. */
  public let id: String?

  /** The list's ID associated with this landing page. */
  public let listId: String?

  /** The name of this landing page. */
  public let name: String?

  /** The time this landing page was published. */
  public let publishedAt: MailchimpOptionalDate

  /** The status of this landing page. */
  public let status: Status?

  /** The ID of the store associated with this landing page. */
  public let storeId: String?

  /** The template_id of this landing page. */
  public let templateId: Int?

  /** The title of this landing page seen in the browser's title bar. */
  public let title: String?

  public let tracking: TrackingSettings?

  /** The time this landing page was unpublished. */
  public let unpublishedAt: MailchimpOptionalDate

  /** The time this landing page was updated at. */
  public let updatedAt: MailchimpOptionalDate

  /** The url of the published landing page. */
  public let url: String?

  /** The ID used in the Mailchimp web application. */
  public let webId: Int?

  public init(links: [ResourceLink]? = nil, createdAt: MailchimpOptionalDate, createdBySource: String? = nil, description: String? = nil, id: String? = nil, listId: String? = nil, name: String? = nil, publishedAt: MailchimpOptionalDate, status: Status? = nil, storeId: String? = nil, templateId: Int? = nil, title: String? = nil, tracking: TrackingSettings? = nil, unpublishedAt: MailchimpOptionalDate, updatedAt: MailchimpOptionalDate, url: String? = nil, webId: Int? = nil) {
    self.links = links
    self.createdAt = createdAt
    self.createdBySource = createdBySource
    self.description = description
    self.id = id
    self.listId = listId
    self.name = name
    self.publishedAt = publishedAt
    self.status = status
    self.storeId = storeId
    self.templateId = templateId
    self.title = title
    self.tracking = tracking
    self.unpublishedAt = unpublishedAt
    self.updatedAt = updatedAt
    self.url = url
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case createdAt = "created_at"
    case createdBySource = "created_by_source"
    case description
    case id
    case listId = "list_id"
    case name
    case publishedAt = "published_at"
    case status
    case storeId = "store_id"
    case templateId = "template_id"
    case title
    case tracking
    case unpublishedAt = "unpublished_at"
    case updatedAt = "updated_at"
    case url
    case webId = "web_id"
  }
}
