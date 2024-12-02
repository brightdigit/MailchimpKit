import Foundation
import PrchModel

/** A list of members who have unsubscribed from a specific campaign. */
public struct Unsubscribes: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The campaign id. */
  public let campaignId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  /** An array of objects, each representing a member who unsubscribed from a campaign. */
  public let unsubscribes: [Unsubscribes]?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, totalItems: Int? = nil, unsubscribes: [Unsubscribes]? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.unsubscribes = unsubscribes
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case unsubscribes
  }
}
