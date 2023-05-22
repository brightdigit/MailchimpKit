import Foundation

import PrchModel
/** A list of reports containing campaigns marked as Sent. */
public struct CampaignReports1Model: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a report resource. */
  public var reports: [CampaignReportModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, reports: [CampaignReportModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.reports = reports
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case reports
    case totalItems = "total_items"
  }
}
