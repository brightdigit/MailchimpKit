import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf: Codable, Equatable, Content {
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

  public let canceledAt: MailchimpOptionalDate

  public let createTime: MailchimpOptionalDate

  public let hasSegment: Bool?

  /** Unique ID of an Outreach */
  public let id: String?

  /** Title or name of an Outreach */
  public let name: String?

  public let publishedTime: MailchimpOptionalDate

  public let recipients: List10?

  public let reportSummary: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary?

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

  /** Web ID */
  public let webId: Int?

  public init(canceledAt: MailchimpOptionalDate, createTime: MailchimpOptionalDate, hasSegment: Bool? = nil, id: String? = nil, name: String? = nil, publishedTime: MailchimpOptionalDate, recipients: List10? = nil, reportSummary: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary? = nil, showReport: Bool? = nil, startTime: MailchimpOptionalDate, status: Status? = nil, thumbnail: String? = nil, type: Type? = nil, updatedAt: MailchimpOptionalDate, webId: Int? = nil) {
    self.canceledAt = canceledAt
    self.createTime = createTime
    self.hasSegment = hasSegment
    self.id = id
    self.name = name
    self.publishedTime = publishedTime
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.showReport = showReport
    self.startTime = startTime
    self.status = status
    self.thumbnail = thumbnail
    self.type = type
    self.updatedAt = updatedAt
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case canceledAt = "canceled_at"
    case createTime = "create_time"
    case hasSegment = "has_segment"
    case id
    case name
    case publishedTime = "published_time"
    case recipients
    case reportSummary = "report_summary"
    case showReport = "show_report"
    case startTime = "start_time"
    case status
    case thumbnail
    case type
    case updatedAt = "updated_at"
    case webId = "web_id"
  }
}
