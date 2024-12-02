import Foundation
import PrchModel

/** A summary of an individual Automation workflow's settings and content. */
public struct AutomationWorkflow1: Codable, Equatable, Content {
  public let recipients: List1

  public let triggerSettings: AutomationTrigger1

  public let settings: AutomationCampaignSettings1?

  public init(recipients: List1, triggerSettings: AutomationTrigger1, settings: AutomationCampaignSettings1? = nil) {
    self.recipients = recipients
    self.triggerSettings = triggerSettings
    self.settings = settings
  }

  public enum CodingKeys: String, CodingKey {
    case recipients
    case triggerSettings = "trigger_settings"
    case settings
  }
}
