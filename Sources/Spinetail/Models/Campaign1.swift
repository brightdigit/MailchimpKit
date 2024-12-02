import Foundation
import PrchModel

/** A summary of an individual campaign's settings and content. */
public struct Campaign1: Codable, Equatable, Content {
  /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case regular
    case plaintext
    case absplit
    case rss
    case variate
  }

  /** How the campaign's content is put together. The old drag and drop editor uses 'template' while the new editor uses 'multichannel'. Defaults to template. */
  public enum ContentType: String, Codable, Equatable, CaseIterable {
    case template
    case multichannel
  }

  /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
  public let type: `Type`

  /** How the campaign's content is put together. The old drag and drop editor uses 'template' while the new editor uses 'multichannel'. Defaults to template. */
  public let contentType: ContentType?

  public let recipients: List4?

  public let rssOpts: RSSOptions1?

  public let settings: CampaignSettings3?

  public let socialCard: CampaignSocialCard?

  public let tracking: CampaignTrackingOptions1?

  public let variateSettings: ABTestOptions1?

  public init(type: Type, contentType: ContentType? = nil, recipients: List4? = nil, rssOpts: RSSOptions1? = nil, settings: CampaignSettings3? = nil, socialCard: CampaignSocialCard? = nil, tracking: CampaignTrackingOptions1? = nil, variateSettings: ABTestOptions1? = nil) {
    self.type = type
    self.contentType = contentType
    self.recipients = recipients
    self.rssOpts = rssOpts
    self.settings = settings
    self.socialCard = socialCard
    self.tracking = tracking
    self.variateSettings = variateSettings
  }

  public enum CodingKeys: String, CodingKey {
    case type
    case contentType = "content_type"
    case recipients
    case rssOpts = "rss_opts"
    case settings
    case socialCard = "social_card"
    case tracking
    case variateSettings = "variate_settings"
  }
}
