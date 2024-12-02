import Foundation
import PrchModel

/** Members found for given search term */
public struct Members: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public let exactMatches: ExactMatches?

  public let fullSearch: PartialMatches?

  public init(links: [ResourceLink]? = nil, exactMatches: ExactMatches? = nil, fullSearch: PartialMatches? = nil) {
    self.links = links
    self.exactMatches = exactMatches
    self.fullSearch = fullSearch
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case exactMatches = "exact_matches"
    case fullSearch = "full_search"
  }
}
