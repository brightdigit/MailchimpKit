import Foundation
import PrchModel

/** Update information about an individual Automation workflow email. */
public struct UpdateInformationAboutaSpecificWorkflowEmail: Codable, Equatable, Content {
  public let delay: AutomationDelay1?

  public let settings: CampaignSettings1?

  public init(delay: AutomationDelay1? = nil, settings: CampaignSettings1? = nil) {
    self.delay = delay
    self.settings = settings
  }

  public enum CodingKeys: String, CodingKey {
    case delay
    case settings
  }
}
