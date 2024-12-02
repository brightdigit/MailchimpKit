import Foundation
import PrchModel

/** An account export. */
public struct AccountExportsInner: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** If the export is finished, the download URL for an export. URLs are only valid for 90 days after the export completes. */
  public let downloadURL: String?

  /** The ID for the export. */
  public let exportId: Int?

  /** If finished, the finish time for the export. */
  public let finished: MailchimpOptionalDate

  /** The size of the uncompressed export in bytes. */
  public let sizeInBytes: Int?

  /** Start time for the export. */
  public let started: MailchimpOptionalDate

  public init(links: [ResourceLink]? = nil, downloadURL: String? = nil, exportId: Int? = nil, finished: MailchimpOptionalDate, sizeInBytes: Int? = nil, started: MailchimpOptionalDate) {
    self.links = links
    self.downloadURL = downloadURL
    self.exportId = exportId
    self.finished = finished
    self.sizeInBytes = sizeInBytes
    self.started = started
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case downloadURL = "download_url"
    case exportId = "export_id"
    case finished
    case sizeInBytes = "size_in_bytes"
    case started
  }
}
