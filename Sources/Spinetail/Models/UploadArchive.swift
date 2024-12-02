import Foundation
import PrchModel

/** Available when uploading an archive to create campaign content. The archive should include all campaign content and images. [Learn more](https://mailchimp.com/help/import-a-custom-html-template/). */
public struct UploadArchive: Codable, Equatable, Content {
  /** The type of encoded file. Defaults to zip. */
  public enum ArchiveType: String, Codable, Equatable, CaseIterable {
    case zip
    case tarGz = "tar.gz"
    case tarBz2 = "tar.bz2"
    case tar
    case tgz
    case tbz
  }

  /** The base64-encoded representation of the archive file. */
  public let archiveContent: String

  /** The type of encoded file. Defaults to zip. */
  public let archiveType: ArchiveType?

  public init(archiveContent: String, archiveType: ArchiveType? = nil) {
    self.archiveContent = archiveContent
    self.archiveType = archiveType
  }

  public enum CodingKeys: String, CodingKey {
    case archiveContent = "archive_content"
    case archiveType = "archive_type"
  }
}
