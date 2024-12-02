import Foundation
import PrchModel

/** A list of URLs and unique IDs included in HTML and plain-text versions of a campaign. */
public struct ClickDetailReport: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The campaign id. */
  public let campaignId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  /** An array of objects, each representing a specific URL contained in the campaign. */
  public let urlsClicked: [ClickDetailReport]?

  public init(links: [ResourceLink]? = nil, campaignId: String? = nil, totalItems: Int? = nil, urlsClicked: [ClickDetailReport]? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.urlsClicked = urlsClicked
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case urlsClicked = "urls_clicked"
  }
}
