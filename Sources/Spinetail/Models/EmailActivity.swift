import Foundation
import PrchModel

/** A list of member's subscriber activity in a specific campaign. */
public struct EmailActivity: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The unique id for the sent campaign. */
  public let campaignId: String?

  /** An array of members that were sent the campaign. */
  public let emails: [EmailActivity]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, emails: [EmailActivity]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.emails = emails
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case emails
    case totalItems = "total_items"
  }
}
