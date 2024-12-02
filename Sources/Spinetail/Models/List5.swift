import Foundation
import PrchModel

/** List settings for the campaign. */
public struct List5: Codable, Equatable, Content {
  /** The unique list id. */
  public let listId: String

  public let segmentOpts: SegmentOptions1?

  public init(listId: String, segmentOpts: SegmentOptions1? = nil) {
    self.listId = listId
    self.segmentOpts = segmentOpts
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case segmentOpts = "segment_opts"
  }
}
