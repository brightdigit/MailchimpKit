import Foundation
import PrchModel

public struct GetFacebookAdsId200Response: Codable, Equatable, Content {
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

  public let budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget?

  public let canceledAt: MailchimpOptionalDate

  public let channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel?

  public let content: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Content?

  public let createTime: MailchimpOptionalDate

  public let emailSourceName: String?

  public let endTime: MailchimpOptionalDate

  public let feedback: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Feedback?

  /** Check if this ad has audience setup */
  public let hasAudience: Bool?

  /** Check if this ad has content */
  public let hasContent: Bool?

  public let hasSegment: Bool?

  /** Unique ID of an Outreach */
  public let id: String?

  /** Check if this ad is connected to a facebook page */
  public let isConnected: Bool?

  /** Title or name of an Outreach */
  public let name: String?

  public let needsAttention: Bool?

  public let pausedAt: MailchimpOptionalDate

  public let publishedTime: MailchimpOptionalDate

  public let recipients: List10?

  public let reportSummary: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary?

  /** Outreach report availability */
  public let showReport: Bool?

  public let site: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Site?

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
    links: [ResourceLink]? = nil, audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Audience? = nil,
    budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget? = nil, canceledAt: MailchimpOptionalDate, channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel? = nil,
    content: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Content? = nil, createTime: MailchimpOptionalDate, emailSourceName: String? = nil, endTime: MailchimpOptionalDate, feedback: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Feedback? = nil, hasAudience: Bool? = nil,
    hasContent: Bool? = nil, hasSegment: Bool? = nil, id: String? = nil, isConnected: Bool? = nil, name: String? = nil,
    needsAttention: Bool? = nil, pausedAt: MailchimpOptionalDate, publishedTime: MailchimpOptionalDate, recipients: List10? = nil,
    reportSummary: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary? = nil, showReport: Bool? = nil,
    site: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Site? = nil, startTime: MailchimpOptionalDate, status: Status? = nil,
    thumbnail: String? = nil, type: Type? = nil, updatedAt: MailchimpOptionalDate, wasCanceledByFacebook: Bool? = nil, webId: Int? = nil
  ) {
    self.links = links
    self.audience = audience
    self.budget = budget
    self.canceledAt = canceledAt
    self.channel = channel
    self.content = content
    self.createTime = createTime
    self.emailSourceName = emailSourceName
    self.endTime = endTime
    self.feedback = feedback
    self.hasAudience = hasAudience
    self.hasContent = hasContent
    self.hasSegment = hasSegment
    self.id = id
    self.isConnected = isConnected
    self.name = name
    self.needsAttention = needsAttention
    self.pausedAt = pausedAt
    self.publishedTime = publishedTime
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.showReport = showReport
    self.site = site
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
    case budget
    case canceledAt = "canceled_at"
    case channel
    case content
    case createTime = "create_time"
    case emailSourceName = "email_source_name"
    case endTime = "end_time"
    case feedback
    case hasAudience = "has_audience"
    case hasContent = "has_content"
    case hasSegment = "has_segment"
    case id
    case isConnected = "is_connected"
    case name
    case needsAttention = "needs_attention"
    case pausedAt = "paused_at"
    case publishedTime = "published_time"
    case recipients
    case reportSummary = "report_summary"
    case showReport = "show_report"
    case site
    case startTime = "start_time"
    case status
    case thumbnail
    case type
    case updatedAt = "updated_at"
    case wasCanceledByFacebook = "was_canceled_by_facebook"
    case webId = "web_id"
  }
}
