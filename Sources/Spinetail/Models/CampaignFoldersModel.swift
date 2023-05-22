import Foundation

import PrchModel
/** A list of campaign folders */
public struct CampaignFoldersModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects representing campaign folders. */
  public var folders: [CampaignFolderModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, folders: [CampaignFolderModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.folders = folders
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case folders
    case totalItems = "total_items"
  }
}
