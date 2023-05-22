import Foundation

import PrchModel
/** A collection of connected sites in the account. */
public struct ConnectedSitesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a connected site. */
  public var sites: [ConnectedSiteModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, sites: [ConnectedSiteModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.sites = sites
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case sites
    case totalItems = "total_items"
  }
}
