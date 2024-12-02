import Foundation
import PrchModel

/** A collection of connected sites in the account. */
public struct ConnectedSitesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing a connected site. */
  public let sites: [ConnectedSite]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, sites: [ConnectedSite]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.sites = sites
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case sites
    case totalItems = "total_items"
  }
}
