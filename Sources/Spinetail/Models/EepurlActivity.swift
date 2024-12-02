import Foundation
import PrchModel

/** A summary of social activity for the campaign, tracked by EepURL. */
public struct EepurlActivity: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The unique id for the campaign. */
  public let campaignId: String?

  public let clicks: ClickSummary?

  /** The shortened link used for tracking. */
  public let eepurl: String?

  /** A summary of the top referrers for the campaign. */
  public let referrers: [Referrer]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public let twitter: TwitterStats?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, clicks: ClickSummary? = nil, eepurl: String? = nil, referrers: [Referrer]? = nil, totalItems: Int? = nil, twitter: TwitterStats? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.clicks = clicks
    self.eepurl = eepurl
    self.referrers = referrers
    self.totalItems = totalItems
    self.twitter = twitter
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case clicks
    case eepurl
    case referrers
    case totalItems = "total_items"
    case twitter
  }
}
