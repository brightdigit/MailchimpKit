import Foundation
import PrchModel

/** An array of campaigns. */
public struct GetCampaigns200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of campaigns. */
  public let campaigns: [Campaign]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, campaigns: [Campaign]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaigns = campaigns
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaigns
    case totalItems = "total_items"
  }
}
