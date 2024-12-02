import Foundation
import PrchModel

/** A collection of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to 'report spam' in their email program. */
public struct AbuseComplaints: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an abuse report resource. */
  public let abuseReports: [AbuseComplaint]?

  /** The list id for the abuse report. */
  public let listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, abuseReports: [AbuseComplaint]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.abuseReports = abuseReports
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case abuseReports = "abuse_reports"
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
