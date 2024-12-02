import Foundation
import PrchModel

/** A detailed report of any campaign emails that were opened by a list member. */
public struct OpenDetailReport: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The campaign id. */
  public let campaignId: String?

  /** An array of objects, each representing a list member who opened a campaign email. Each members object will contain information about the number of total opens by a single member, as well as timestamps for each open event. */
  public let members: [OpenActivity]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  /** The total number of opens matching the query regardless of pagination. */
  public let totalOpens: Int?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, members: [OpenActivity]? = nil, totalItems: Int? = nil, totalOpens: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.members = members
    self.totalItems = totalItems
    self.totalOpens = totalOpens
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case members
    case totalItems = "total_items"
    case totalOpens = "total_opens"
  }
}
