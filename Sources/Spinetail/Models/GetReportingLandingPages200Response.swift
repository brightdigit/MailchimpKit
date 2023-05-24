import Foundation
import PrchModel

/** A collection of landing pages. */
public struct GetReportingLandingPages200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public let landingPages: [LandingPageReport]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, landingPages: [LandingPageReport]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.landingPages = landingPages
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case landingPages = "landing_pages"
    case totalItems = "total_items"
  }
}