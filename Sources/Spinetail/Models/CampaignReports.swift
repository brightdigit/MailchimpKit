import Foundation
import PrchModel

/** A summary of the comment feedback for a specific campaign. */
public struct CampaignReports: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The unique id for the campaign. */
  public let campaignId: String?

  /** A collection of feedback items for a campaign. */
  public let feedback: [CampaignFeedback]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, feedback: [CampaignFeedback]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.feedback = feedback
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case feedback
    case totalItems = "total_items"
  }
}
