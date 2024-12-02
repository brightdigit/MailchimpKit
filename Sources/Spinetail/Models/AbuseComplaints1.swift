import Foundation
import PrchModel

/** A list of abuse complaints for a specific list. */
public struct AbuseComplaints1: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an abuse report resource. */
  public let abuseReports: [AbuseComplaint1]?

  /** The campaign id. */
  public let campaignId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, abuseReports: [AbuseComplaint1]? = nil, campaignId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.abuseReports = abuseReports
    self.campaignId = campaignId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case abuseReports = "abuse_reports"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
  }
}
