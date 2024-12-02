import Foundation
import PrchModel

/** A list of campaign folders */
public struct CampaignFoldersModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects representing campaign folders. */
  public let folders: [CampaignFolder]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, folders: [CampaignFolder]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.folders = folders
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case folders
    case totalItems = "total_items"
  }
}
