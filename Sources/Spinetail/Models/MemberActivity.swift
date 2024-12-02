import Foundation
import PrchModel

/** Member activity events. */
public struct MemberActivity: Codable, Equatable, Content {
  /** The type of action recorded for the subscriber. */
  public let action: String?

  /** The web-based ID for the campaign. */
  public let campaignId: String?

  /** The ID of the parent campaign. */
  public let parentCampaign: String?

  /** The date and time recorded for the action. */
  public let timestamp: MailchimpOptionalDate

  /** If set, the campaign's title. */
  public let title: String?

  /** The type of campaign that was sent. */
  public let type: String?

  /** For clicks, the URL the subscriber clicked on. */
  public let url: String?

  public init(action: String? = nil, campaignId: String? = nil, parentCampaign: String? = nil, timestamp: MailchimpOptionalDate, title: String? = nil, type: String? = nil, url: String? = nil) {
    self.action = action
    self.campaignId = campaignId
    self.parentCampaign = parentCampaign
    self.timestamp = timestamp
    self.title = title
    self.type = type
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case action
    case campaignId = "campaign_id"
    case parentCampaign = "parent_campaign"
    case timestamp
    case title
    case type
    case url
  }
}
