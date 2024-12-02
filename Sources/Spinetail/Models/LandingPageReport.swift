import Foundation
import PrchModel

/** A summary of an individual landing page's settings and content. */
public struct LandingPageReport: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The number of clicks to this landing pages. */
  public let clicks: Int?

  /** The percentage of people who visited your landing page and were added to your list. */
  public let conversionRate: Double?

  public let ecommerce: LandingPageReportEcommerce?

  /** A string that uniquely identifies this landing page. */
  public let id: String?

  /** The list id connected to this landing page. */
  public let listId: String?

  /** List Name */
  public let listName: String?

  /** The name of this landing page the user will see. */
  public let name: String?

  /** The time this landing page was published. */
  public let publishedAt: MailchimpOptionalDate

  /** A list of tags associated to the landing page. */
  public let signupTags: [Tag]?

  /** The status of the landing page. */
  public let status: String?

  /** The number of subscribes to this landing pages. */
  public let subscribes: Int?

  public let timeseries: LandingPageReportTimeseries?

  /** The name of the landing page the user's customers will see. */
  public let title: String?

  /** The number of unique visits to this landing pages. */
  public let uniqueVisits: Int?

  /** The time this landing page was unpublished. */
  public let unpublishedAt: MailchimpOptionalDate

  /** The landing page url. */
  public let url: String?

  /** The number of visits to this landing pages. */
  public let visits: Int?

  /** The ID used in the Mailchimp web application. */
  public let webId: Int?

  public init(links: [ResourceLink]? = nil, clicks: Int? = nil, conversionRate: Double? = nil, ecommerce: LandingPageReportEcommerce? = nil, id: String? = nil, listId: String? = nil, listName: String? = nil, name: String? = nil, publishedAt: MailchimpOptionalDate, signupTags: [Tag]? = nil, status: String? = nil, subscribes: Int? = nil, timeseries: LandingPageReportTimeseries? = nil, title: String? = nil, uniqueVisits: Int? = nil, unpublishedAt: MailchimpOptionalDate, url: String? = nil, visits: Int? = nil, webId: Int? = nil) {
    self.links = links
    self.clicks = clicks
    self.conversionRate = conversionRate
    self.ecommerce = ecommerce
    self.id = id
    self.listId = listId
    self.listName = listName
    self.name = name
    self.publishedAt = publishedAt
    self.signupTags = signupTags
    self.status = status
    self.subscribes = subscribes
    self.timeseries = timeseries
    self.title = title
    self.uniqueVisits = uniqueVisits
    self.unpublishedAt = unpublishedAt
    self.url = url
    self.visits = visits
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case clicks
    case conversionRate = "conversion_rate"
    case ecommerce
    case id
    case listId = "list_id"
    case listName = "list_name"
    case name
    case publishedAt = "published_at"
    case signupTags = "signup_tags"
    case status
    case subscribes
    case timeseries
    case title
    case uniqueVisits = "unique_visits"
    case unpublishedAt = "unpublished_at"
    case url
    case visits
    case webId = "web_id"
  }
}
