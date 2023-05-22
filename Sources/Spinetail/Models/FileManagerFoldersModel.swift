import Foundation

import PrchModel
/** A list of all folders in the File Manager. */
public struct FileManagerFoldersModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** A list of all folders in the File Manager. */
  public var folders: [GalleryFolderModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, folders: [GalleryFolderModel]? = nil, totalItems: Int? = nil) {
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
