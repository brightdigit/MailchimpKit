import Foundation

import PrchModel
/** A summary of an individual Automation workflow's settings and content. */
public struct AutomationWorkflowModel: Codable, Equatable, Content {
  /** The current status of the Automation. */
  public enum AutomationsAutomationsStatus: String, Codable, Equatable, CaseIterable {
    case save
    case paused
    case sending
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The date and time the Automation was created in ISO 8601 format. */
  public var createTime: DateTime?

  /** The total number of emails sent for the Automation. */
  public var emailsSent: Int?

  /** A string that identifies the Automation. */
  public var id: String?

  public var recipients: ListModel?

  public var reportSummary: CampaignReportSummaryModel?

  public var settings: AutomationCampaignSettingsModel?

  /** The date and time the Automation was started in ISO 8601 format. */
  public var startTime: DateTime?

  /** The current status of the Automation. */
  public var status: Status?

  public var tracking: AutomationTrackingOptionsModel?

  public var triggerSettings: AutomationTriggerModel?

  public init(links: [ResourceLinkModel]? = nil, createTime: DateTime? = nil, emailsSent: Int? = nil, id: String? = nil, recipients: ListModel? = nil, reportSummary: CampaignReportSummaryModel? = nil, settings: AutomationCampaignSettingsModel? = nil, startTime: DateTime? = nil, status: Status? = nil, tracking: AutomationTrackingOptionsModel? = nil, triggerSettings: AutomationTriggerModel? = nil) {
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

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
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
