import Foundation
import PrchModel

/** A summary of an individual Automation workflow's settings and content. */
public struct AutomationWorkflow: Codable, Equatable, Content {
  /** The current status of the Automation. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case save
    case paused
    case sending
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The date and time the Automation was created in ISO 8601 format. */
  public let createTime: MailchimpOptionalDate

  /** The total number of emails sent for the Automation. */
  public let emailsSent: Int?

  /** A string that identifies the Automation. */
  public let id: String?

  public let recipients: List?

  public let reportSummary: CampaignReportSummary?

  public let settings: AutomationCampaignSettings?

  /** The date and time the Automation was started in ISO 8601 format. */
  public let startTime: MailchimpOptionalDate

  /** The current status of the Automation. */
  public let status: Status?

  public let tracking: AutomationTrackingOptions?

  public let triggerSettings: AutomationTrigger?

  public init(links: [ResourceLink]? = nil, createTime: MailchimpOptionalDate, emailsSent: Int? = nil, id: String? = nil, recipients: List? = nil, reportSummary: CampaignReportSummary? = nil, settings: AutomationCampaignSettings? = nil, startTime: MailchimpOptionalDate, status: Status? = nil, tracking: AutomationTrackingOptions? = nil, triggerSettings: AutomationTrigger? = nil) {
    self.links = links
    self.createTime = createTime
    self.emailsSent = emailsSent
    self.id = id
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.settings = settings
    self.startTime = startTime
    self.status = status
    self.tracking = tracking
    self.triggerSettings = triggerSettings
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case createTime = "create_time"
    case emailsSent = "emails_sent"
    case id
    case recipients
    case reportSummary = "report_summary"
    case settings
    case startTime = "start_time"
    case status
    case tracking
    case triggerSettings = "trigger_settings"
  }
}
