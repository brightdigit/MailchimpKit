import Foundation
import PrchModel

/** Report details about a sent campaign. */
public struct CampaignReport: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public let abSplit: ABSplitStats?

  /** The number of abuse reports generated for this campaign. */
  public let abuseReports: Int?

  public let bounces: Bounces?

  /** The title of the campaign. */
  public let campaignTitle: String?

  public let clicks: Clicks?

  public let deliveryStatus: CampaignDeliveryStatus?

  public let ecommerce: ECommerceReport1?

  /** The total number of emails sent for this campaign. */
  public let emailsSent: Int?

  public let facebookLikes: FacebookLikes?

  public let forwards: Forwards?

  /** A string that uniquely identifies this campaign. */
  public let id: String?

  public let industryStats: IndustryStats1?

  /** The unique list id. */
  public let listId: String?

  /** The status of the list used, namely if it's deleted or disabled. */
  public let listIsActive: Bool?

  /** The name of the list. */
  public let listName: String?

  public let listStats: ListStats?

  public let opens: Opens?

  /** The preview text for the campaign. */
  public let previewText: String?

  /** For RSS campaigns, the date and time of the last send in ISO 8601 format. */
  public let rssLastSend: MailchimpOptionalDate

  /** The date and time a campaign was sent in ISO 8601 format. */
  public let sendTime: MailchimpOptionalDate

  public let shareReport: ShareReport?

  /** The subject line for the campaign. */
  public let subjectLine: String?

  /** An hourly breakdown of the performance of the campaign over the first 24 hours. */
  public let timeseries: [TimeseriesInner]?

  /** An hourly breakdown of sends, opens, and clicks if a campaign is sent using timewarp. */
  public let timewarp: [TimewarpStatsInner]?

  /** The type of campaign (regular, plain-text, ab_split, rss, automation, variate, or auto). */
  public let type: String?

  /** The total number of unsubscribed members for this campaign. */
  public let unsubscribed: Int?

  public init(
    links: [ResourceLink]? = nil,
    abSplit: ABSplitStats? = nil,
    abuseReports: Int? = nil,
    bounces: Bounces? = nil,
    campaignTitle: String? = nil,
    clicks: Clicks? = nil,
    deliveryStatus: CampaignDeliveryStatus? = nil,
    ecommerce: ECommerceReport1? = nil,
    emailsSent: Int? = nil,
    facebookLikes: FacebookLikes? = nil,
    forwards: Forwards? = nil,
    id: String? = nil,
    industryStats: IndustryStats1? = nil,
    listId: String? = nil,
    listIsActive: Bool? = nil,
    listName: String? = nil,
    listStats: ListStats? = nil,
    opens: Opens? = nil,
    previewText: String? = nil,
    rssLastSend: MailchimpOptionalDate,
    sendTime: MailchimpOptionalDate,
    shareReport: ShareReport? = nil,
    subjectLine: String? = nil,
    timeseries: [TimeseriesInner]? = nil,
    timewarp: [TimewarpStatsInner]? = nil,
    type: String? = nil,
    unsubscribed: Int? = nil
  ) {
    self.links = links
    self.abSplit = abSplit
    self.abuseReports = abuseReports
    self.bounces = bounces
    self.campaignTitle = campaignTitle
    self.clicks = clicks
    self.deliveryStatus = deliveryStatus
    self.ecommerce = ecommerce
    self.emailsSent = emailsSent
    self.facebookLikes = facebookLikes
    self.forwards = forwards
    self.id = id
    self.industryStats = industryStats
    self.listId = listId
    self.listIsActive = listIsActive
    self.listName = listName
    self.listStats = listStats
    self.opens = opens
    self.previewText = previewText
    self.rssLastSend = rssLastSend
    self.sendTime = sendTime
    self.shareReport = shareReport
    self.subjectLine = subjectLine
    self.timeseries = timeseries
    self.timewarp = timewarp
    self.type = type
    self.unsubscribed = unsubscribed
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case abSplit = "ab_split"
    case abuseReports = "abuse_reports"
    case bounces
    case campaignTitle = "campaign_title"
    case clicks
    case deliveryStatus = "delivery_status"
    case ecommerce
    case emailsSent = "emails_sent"
    case facebookLikes = "facebook_likes"
    case forwards
    case id
    case industryStats = "industry_stats"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case listName = "list_name"
    case listStats = "list_stats"
    case opens
    case previewText = "preview_text"
    case rssLastSend = "rss_last_send"
    case sendTime = "send_time"
    case shareReport = "share_report"
    case subjectLine = "subject_line"
    case timeseries
    case timewarp
    case type
    case unsubscribed
  }
}
