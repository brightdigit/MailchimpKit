import Foundation
import PrchModel

/** An individual folder listed in the File Manager. */
public struct GalleryFolder: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The date and time a file was added to the File Manager in ISO 8601 format. */
  public let createdAt: MailchimpOptionalDate

  /** The username of the profile that created the folder. */
  public let createdBy: String?

  /** The number of files in the folder. */
  public let fileCount: Int?

  /** The unique id for the folder. */
  public let id: Int?

  /** The name of the folder. */
  public let name: String?

  public init(links: [ResourceLink]? = nil, createdAt: MailchimpOptionalDate, createdBy: String? = nil, fileCount: Int? = nil, id: Int? = nil, name: String? = nil) {
    self.links = links
    self.createdAt = createdAt
    self.createdBy = createdBy
    self.fileCount = fileCount
    self.id = id
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case fileCount = "file_count"
    case id
    case name
  }
}
