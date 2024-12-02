import Foundation
import PrchModel

/** A summary of an individual campaign's settings and content. */
public struct Campaign2: Codable, Equatable, Content {
  public let settings: CampaignSettings4

  public let recipients: List5?

  public let rssOpts: RSSOptions2?

  public let socialCard: CampaignSocialCard?

  public let tracking: CampaignTrackingOptions1?

  public let variateSettings: ABTestOptions1?

  public init(settings: CampaignSettings4, recipients: List5? = nil, rssOpts: RSSOptions2? = nil, socialCard: CampaignSocialCard? = nil, tracking: CampaignTrackingOptions1? = nil, variateSettings: ABTestOptions1? = nil) {
    self.settings = settings
    self.recipients = recipients
    self.rssOpts = rssOpts
    self.socialCard = socialCard
    self.tracking = tracking
    self.variateSettings = variateSettings
  }

  public enum CodingKeys: String, CodingKey {
    case settings
    case recipients
    case rssOpts = "rss_opts"
    case socialCard = "social_card"
    case tracking
    case variateSettings = "variate_settings"
  }
}
