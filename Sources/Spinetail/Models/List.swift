import Foundation
import PrchModel

/** List settings for the Automation. */
public struct List: Codable, Equatable, Content {
  /** The unique list id. */
  public let listId: String?

  /** The status of the list used, namely if it's deleted or disabled. */
  public let listIsActive: Bool?

  /** List Name. */
  public let listName: String?

  public let segmentOpts: SegmentOptions?

  /** The id of the store. */
  public let storeId: String?

  public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, segmentOpts: SegmentOptions? = nil, storeId: String? = nil) {
    self.listId = listId
    self.listIsActive = listIsActive
    self.listName = listName
    self.segmentOpts = segmentOpts
    self.storeId = storeId
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case listName = "list_name"
    case segmentOpts = "segment_opts"
    case storeId = "store_id"
  }
}
