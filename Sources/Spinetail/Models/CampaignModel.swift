import Foundation

import PrchModel
/** A summary of an individual campaign's settings and content. */
public struct CampaignModel: Codable, Equatable, Content {
  /** How the campaign's content is put together. */
  public enum ContentType: String, Codable, Equatable, CaseIterable {
    case template
    case html
    case url
    case multichannel
  }

  /** The current status of the campaign. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case save
    case paused
    case schedule
    case sending
    case sent
    case canceled
    case canceling
    case archived
  }

  /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case regular
    case plaintext
    case absplit
    case rss
    case variate
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var abSplitOpts: ABTestingOptionsModel?

  /** The link to the campaign's archive version in ISO 8601 format. */
  public var archiveURL: String?

  /** How the campaign's content is put together. */
  public var contentType: ContentType?

  /** The date and time the campaign was created in ISO 8601 format. */
  public var createTime: DateTime?

  public var deliveryStatus: CampaignDeliveryStatusModel?

  /** The total number of emails sent for this campaign. */
  public var emailsSent: Int?

  /** A string that uniquely identifies this campaign. */
  public var id: String?

  /** The original link to the campaign's archive version. */
  public var longArchiveURL: String?

  /** Determines if the campaign needs its blocks refreshed by opening the web-based campaign editor. Deprecated and will always return false. */
  public var needsBlockRefresh: Bool?

  /** If this campaign is the child of another campaign, this identifies the parent campaign. For Example, for RSS or Automation children. */
  public var parentCampaignId: String?

  public var recipients: List3Model?

  public var reportSummary: CampaignReportSummary2Model?

  /** Determines if the campaign qualifies to be resent to non-openers. */
  public var resendable: Bool?

  public var rssOpts: RSSOptionsModel?

  /** The date and time a campaign was sent. */
  // public var sendTime: DateTime?

  public var settings: CampaignSettings2Model?

  public var socialCard: CampaignSocialCardModel?

  /** The current status of the campaign. */
  public var status: Status?

  public var tracking: CampaignTrackingOptions1Model?

  /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
  public var type: `Type`?

  public var variateSettings: ABTestOptionsModel?

  /** The ID used in the Mailchimp web application. View this campaign in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`. */
  public var webId: Int?

  public init(links: [ResourceLinkModel]? = nil, abSplitOpts: ABTestingOptionsModel? = nil, archiveURL: String? = nil, contentType: ContentType? = nil, createTime: DateTime? = nil, deliveryStatus: CampaignDeliveryStatusModel? = nil, emailsSent: Int? = nil, id: String? = nil, longArchiveURL: String? = nil, needsBlockRefresh: Bool? = nil, parentCampaignId: String? = nil, recipients: List3Model? = nil, reportSummary: CampaignReportSummary2Model? = nil, resendable: Bool? = nil, rssOpts: RSSOptionsModel? = nil, sendTime _: DateTime? = nil, settings: CampaignSettings2Model? = nil, socialCard: CampaignSocialCardModel? = nil, status: Status? = nil, tracking: CampaignTrackingOptions1Model? = nil, type: Type? = nil, variateSettings: ABTestOptionsModel? = nil, webId: Int? = nil) {
    self.links = links
    self.abSplitOpts = abSplitOpts
    self.archiveURL = archiveURL
    self.contentType = contentType
    self.createTime = createTime
    self.deliveryStatus = deliveryStatus
    self.emailsSent = emailsSent
    self.id = id
    self.longArchiveURL = longArchiveURL
    self.needsBlockRefresh = needsBlockRefresh
    self.parentCampaignId = parentCampaignId
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.resendable = resendable
    self.rssOpts = rssOpts
    // self.sendTime = sendTime
    self.settings = settings
    self.socialCard = socialCard
    self.status = status
    self.tracking = tracking
    self.type = type
    self.variateSettings = variateSettings
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case abSplitOpts = "ab_split_opts"
    case archiveURL = "archive_url"
    case contentType = "content_type"
    case createTime = "create_time"
    case deliveryStatus = "delivery_status"
    case emailsSent = "emails_sent"
    case id
    case longArchiveURL = "long_archive_url"
    case needsBlockRefresh = "needs_block_refresh"
    case parentCampaignId = "parent_campaign_id"
    case recipients
    case reportSummary = "report_summary"
    case resendable
    case rssOpts = "rss_opts"
    // case sendTime = "send_time"
    case settings
    case socialCard = "social_card"
    case status
    case tracking
    case type
    case variateSettings = "variate_settings"
    case webId = "web_id"
  }
}
