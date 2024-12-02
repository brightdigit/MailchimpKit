import Foundation
import PrchModel

/** A list of available images and files stored in the File Manager for the account. */
public struct FileManagerModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /**  A list of files and images in an account. */
  public let files: [GalleryFile]?

  /** The total size of all File Manager files in bytes. */
  public let totalFileSize: Double?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, files: [GalleryFile]? = nil, totalFileSize: Double? = nil, totalItems: Int? = nil) {
    self.links = links
    self.files = files
    self.totalFileSize = totalFileSize
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case files
    case totalFileSize = "total_file_size"
    case totalItems = "total_items"
  }
}
