import Foundation
import PrchModel

/** A list of subscribers who were sent a specific campaign. */
public struct SentTo: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The campaign id. */
  public let campaignId: String?

  /** An array of objects, each representing a campaign recipient. */
  public let sentTo: [SentTo]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, sentTo: [SentTo]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.sentTo = sentTo
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case sentTo = "sent_to"
    case totalItems = "total_items"
  }
}
