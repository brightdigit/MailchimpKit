import Foundation
import PrchModel

/** A list of reports containing child campaigns for a specific campaign. */
public struct CampaignSubReports: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** Unique identifier of the parent campaign */
  public let campaignId: String?

  /** An array of objects, each representing a report resource. */
  public let reports: [CampaignReport]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, reports: [CampaignReport]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.reports = reports
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case reports
    case totalItems = "total_items"
  }
}
