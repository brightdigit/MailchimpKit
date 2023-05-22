import Foundation

import PrchModel
/** A collection of landing pages. */
public struct GetReportingLandingPages200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var landingPages: [LandingPageReportModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, landingPages: [LandingPageReportModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.landingPages = landingPages
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case landingPages = "landing_pages"
    case totalItems = "total_items"
  }
}
