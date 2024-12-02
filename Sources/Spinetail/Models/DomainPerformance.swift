import Foundation
import PrchModel

/** Statistics for the top-performing email domains in a campaign. */
public struct DomainPerformance: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The unique id for the campaign. */
  public let campaignId: String?

  /** The top 5 email domains based on total delivered emails. */
  public let domains: [EmailDomain]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  /** The total number of emails sent for the campaign. */
  public let totalSent: Int?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, domains: [EmailDomain]? = nil, totalItems: Int? = nil, totalSent: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.domains = domains
    self.totalItems = totalItems
    self.totalSent = totalSent
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case domains
    case totalItems = "total_items"
    case totalSent = "total_sent"
  }
}
