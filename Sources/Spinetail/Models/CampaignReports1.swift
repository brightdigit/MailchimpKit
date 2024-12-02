import Foundation
import PrchModel

/** A list of reports containing campaigns marked as Sent. */
public struct CampaignReports1: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a report resource. */
  public let reports: [CampaignReport]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, reports: [CampaignReport]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.reports = reports
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case reports
    case totalItems = "total_items"
  }
}
