import Foundation
import PrchModel

/** CampaignsModel and Snippets found for given search term. */
public struct CampaignsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of matching campaigns and snippets. */
  public let results: [ResultsInner]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, results: [ResultsInner]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.results = results
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case results
    case totalItems = "total_items"
  }
}
