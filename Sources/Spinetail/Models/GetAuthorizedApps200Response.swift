import Foundation
import PrchModel

/** An array of objects, each representing an authorized application. */
public struct GetAuthorizedApps200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an authorized application. */
  public let apps: [AuthorizedApplicationsInner]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, apps: [AuthorizedApplicationsInner]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.apps = apps
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case apps
    case totalItems = "total_items"
  }
}
