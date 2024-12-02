import Foundation
import PrchModel

public struct GetReportingFacebookAdsId200Response: Codable, Equatable, Content {
  /** Campaign, Ad, or Page status */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case save
    case paused
    case schedule
    case sending
    case sent
    case canceled
    case canceling
    case active
    case disconnected
    case somepaused
    case draft
    case completed
    case partialRejected
    case pending
    case rejected
    case published
    case unpublished
  }

  /** Supported Campaign, Ad, Page type */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case regular
    case plaintext
    case rss
    case reconfirm
    case variate
    case absplit
    case automation
    case facebook
    case google
    case autoresponder
    case transactional
    case page
    case website
    case survey
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public let audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Audience?

  public let audienceActivity: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivity?

  public let budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget?

  public let canceledAt: MailchimpOptionalDate

  public let channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel?

  public let createTime: MailchimpOptionalDate

  public let emailSourceName: String?

  public let endTime: MailchimpOptionalDate

  public let hasSegment: Bool?

  /** Unique ID of an Outreach */
  public let id: String?

  /** Title or name of an Outreach */
  public let name: String?

  public let needsAttention: Bool?

  public let pausedAt: MailchimpOptionalDate

  public let publishedTime: MailchimpOptionalDate

  public let recipients: List10?

  public let reportSummary: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary?

  /** Outreach report availability */
  public let showReport: Bool?

  public let startTime: MailchimpOptionalDate

  /** Campaign, Ad, or Page status */
  public let status: Status?

  /** The URL of the thumbnail for this outreach */
  public let thumbnail: String?

  /** Supported Campaign, Ad, Page type */
  public let type: `Type`?

  public let updatedAt: MailchimpOptionalDate

  public let wasCanceledByFacebook: Bool?

  /** Web ID */
  public let webId: Int?

  public init(
    links: [ResourceLink]? = nil,
    audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Audience? = nil,
    audienceActivity: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivity? = nil,
    budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget? = nil, canceledAt: MailchimpOptionalDate, channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel? = nil,
    createTime: MailchimpOptionalDate, emailSourceName: String? = nil, endTime: MailchimpOptionalDate,
    hasSegment: Bool? = nil, id: String? = nil, name: String? = nil, needsAttention: Bool? = nil,
    pausedAt: MailchimpOptionalDate, publishedTime: MailchimpOptionalDate, recipients: List10? = nil,
    reportSummary: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary? = nil,
    showReport: Bool? = nil, startTime: MailchimpOptionalDate, status: Status? = nil, thumbnail: String? = nil,
    type: Type? = nil, updatedAt: MailchimpOptionalDate, wasCanceledByFacebook: Bool? = nil, webId: Int? = nil
  ) {
    self.links = links
    self.audience = audience
    self.audienceActivity = audienceActivity
    self.budget = budget
    self.canceledAt = canceledAt
    self.channel = channel
    self.createTime = createTime
    self.emailSourceName = emailSourceName
    self.endTime = endTime
    self.hasSegment = hasSegment
    self.id = id
    self.name = name
    self.needsAttention = needsAttention
    self.pausedAt = pausedAt
    self.publishedTime = publishedTime
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.showReport = showReport
    self.startTime = startTime
    self.status = status
    self.thumbnail = thumbnail
    self.type = type
    self.updatedAt = updatedAt
    self.wasCanceledByFacebook = wasCanceledByFacebook
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case audience
    case audienceActivity = "audience_activity"
    case budget
    case canceledAt = "canceled_at"
    case channel
    case createTime = "create_time"
    case emailSourceName = "email_source_name"
    case endTime = "end_time"
    case hasSegment = "has_segment"
    case id
    case name
    case needsAttention = "needs_attention"
    case pausedAt = "paused_at"
    case publishedTime = "published_time"
    case recipients
    case reportSummary = "report_summary"
    case showReport = "show_report"
    case startTime = "start_time"
    case status
    case thumbnail
    case type
    case updatedAt = "updated_at"
    case wasCanceledByFacebook = "was_canceled_by_facebook"
    case webId = "web_id"
  }
}
