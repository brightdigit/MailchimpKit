import Foundation
import PrchModel

/** Top open locations for a specific campaign. */
public struct OpenLocations: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The campaign id. */
  public let campaignId: String?

  /** An array of objects, each representing a top location for opens. */
  public let locations: [ListsInner]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, locations: [ListsInner]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.locations = locations
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case locations
    case totalItems = "total_items"
  }
}
