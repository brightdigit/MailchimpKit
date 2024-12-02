import Foundation
import PrchModel

/** A collection of members who clicked on a specific link within a campaign. */
public struct ClickDetailMembers: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The campaign id. */
  public let campaignId: String?

  /** An array of objects, each representing a member who clicked a specific link within a campaign. */
  public let members: [ClickDetailMember]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, members: [ClickDetailMember]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.members = members
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case members
    case totalItems = "total_items"
  }
}
