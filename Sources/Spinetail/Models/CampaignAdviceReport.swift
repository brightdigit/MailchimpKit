import Foundation
import PrchModel

/** A list of feedback based on a campaign's statistics. */
public struct CampaignAdviceReport: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a point of campaign feedback. */
  public let advice: [CampaignAdvice]?

  /** The campaign id. */
  public let campaignId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, advice: [CampaignAdvice]? = nil, campaignId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.advice = advice
    self.campaignId = campaignId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case advice
    case campaignId = "campaign_id"
    case totalItems = "total_items"
  }
}
