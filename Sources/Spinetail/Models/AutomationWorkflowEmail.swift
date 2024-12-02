import Foundation
import PrchModel

/** A summary of an individual Automation workflow email. */
public struct AutomationWorkflowEmail: Codable, Equatable, Content {
  /** The current status of the campaign. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case save
    case paused
    case sending
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The link to the campaign's archive version in ISO 8601 format. */
  public let archiveURL: String?

  /** How the campaign's content is put together ('template', 'drag_and_drop', 'html', 'url'). */
  public let contentType: String?

  /** The date and time the campaign was created in ISO 8601 format. */
  public let createTime: MailchimpOptionalDate

  public let delay: AutomationDelay?

  /** The total number of emails sent for this campaign. */
  public let emailsSent: Int?

  /** Determines if the campaign contains the *|BRAND:LOGO|* merge tag. */
  public let hasLogoMergeTag: Bool?

  /** A string that uniquely identifies the Automation email. */
  public let id: String?

  /** Determines if the automation email needs its blocks refreshed by opening the web-based campaign editor. */
  public let needsBlockRefresh: Bool?

  /** The position of an Automation email in a workflow. */
  public let position: Int?

  public let recipients: List2?

  public let reportSummary: CampaignReportSummary1?

  /**  The date and time a campaign was sent in ISO 8601 format */
  public let sendTime: MailchimpOptionalDate

  public let settings: CampaignSettings?

  public let socialCard: CampaignSocialCard?

  /** The date and time the campaign was started in ISO 8601 format. */
  public let startTime: MailchimpOptionalDate

  /** The current status of the campaign. */
  public let status: Status?

  public let tracking: CampaignTrackingOptions?

  public let triggerSettings: AutomationTrigger?

  /** The ID used in the Mailchimp web application. View this automation in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`. */
  public let webId: Int?

  /** A string that uniquely identifies an Automation workflow. */
  public let workflowId: String?

  public init(links: [ResourceLink]? = nil, archiveURL: String? = nil, contentType: String? = nil, createTime: MailchimpOptionalDate, delay: AutomationDelay? = nil, emailsSent: Int? = nil, hasLogoMergeTag: Bool? = nil, id: String? = nil, needsBlockRefresh: Bool? = nil, position: Int? = nil, recipients: List2? = nil, reportSummary: CampaignReportSummary1? = nil, sendTime: MailchimpOptionalDate, settings: CampaignSettings? = nil, socialCard: CampaignSocialCard? = nil, startTime: MailchimpOptionalDate, status: Status? = nil, tracking: CampaignTrackingOptions? = nil, triggerSettings: AutomationTrigger? = nil, webId: Int? = nil, workflowId: String? = nil) {
    self.links = links
    self.archiveURL = archiveURL
    self.contentType = contentType
    self.createTime = createTime
    self.delay = delay
    self.emailsSent = emailsSent
    self.hasLogoMergeTag = hasLogoMergeTag
    self.id = id
    self.needsBlockRefresh = needsBlockRefresh
    self.position = position
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.sendTime = sendTime
    self.settings = settings
    self.socialCard = socialCard
    self.startTime = startTime
    self.status = status
    self.tracking = tracking
    self.triggerSettings = triggerSettings
    self.webId = webId
    self.workflowId = workflowId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case archiveURL = "archive_url"
    case contentType = "content_type"
    case createTime = "create_time"
    case delay
    case emailsSent = "emails_sent"
    case hasLogoMergeTag = "has_logo_merge_tag"
    case id
    case needsBlockRefresh = "needs_block_refresh"
    case position
    case recipients
    case reportSummary = "report_summary"
    case sendTime = "send_time"
    case settings
    case socialCard = "social_card"
    case startTime = "start_time"
    case status
    case tracking
    case triggerSettings = "trigger_settings"
    case webId = "web_id"
    case workflowId = "workflow_id"
  }
}
