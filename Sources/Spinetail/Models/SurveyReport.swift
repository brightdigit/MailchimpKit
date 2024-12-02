import Foundation
import PrchModel

/** The report for a survey. */
public struct SurveyReport: Codable, Equatable, Content {
  /** The survey's status. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case published
    case unpublished
  }

  /** The date and time the survey was created in ISO 8601 format. */
  public let createdAt: MailchimpOptionalDate

  /** A string that uniquely identifies this survey. */
  public let id: String?

  /** The ID of the list connected to this survey. */
  public let listId: String?

  /** The name of the list connected to this survey. */
  public let listName: String?

  /** The date and time the survey was published in ISO 8601 format. */
  public let publishedAt: MailchimpOptionalDate

  /** The survey's status. */
  public let status: Status?

  /** The title of the survey. */
  public let title: String?

  /** The total number of responses to this survey. */
  public let totalResponses: Int?

  /** The date and time the survey was last updated in ISO 8601 format. */
  public let updatedAt: MailchimpOptionalDate

  /** The URL for the survey. */
  public let url: String?

  /** The ID used in the Mailchimp web application. View this survey report in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/surveys/results?survey_id={web_id}`. */
  public let webId: Int?

  public init(createdAt: MailchimpOptionalDate, id: String? = nil, listId: String? = nil, listName: String? = nil, publishedAt: MailchimpOptionalDate, status: Status? = nil, title: String? = nil, totalResponses: Int? = nil, updatedAt: MailchimpOptionalDate, url: String? = nil, webId: Int? = nil) {
    self.createdAt = createdAt
    self.id = id
    self.listId = listId
    self.listName = listName
    self.publishedAt = publishedAt
    self.status = status
    self.title = title
    self.totalResponses = totalResponses
    self.updatedAt = updatedAt
    self.url = url
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case createdAt = "created_at"
    case id
    case listId = "list_id"
    case listName = "list_name"
    case publishedAt = "published_at"
    case status
    case title
    case totalResponses = "total_responses"
    case updatedAt = "updated_at"
    case url
    case webId = "web_id"
  }
}
