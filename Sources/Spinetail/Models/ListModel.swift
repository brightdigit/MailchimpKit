import Foundation

import PrchModel
/** List settings for the Automation. */
public struct ListModel: Codable, Equatable, Content {
  /** The unique list id. */
  public var listId: String?

  /** The status of the list used, namely if it's deleted or disabled. */
  public var listIsActive: Bool?

  /** List Name. */
  public var listName: String?

  public var segmentOpts: SegmentOptionsModel?

  /** The id of the store. */
  public var storeId: String?

  public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, segmentOpts: SegmentOptionsModel? = nil, storeId: String? = nil) {
    self.listId = listId
    self.listIsActive = listIsActive
    self.listName = listName
    self.segmentOpts = segmentOpts
    self.storeId = storeId
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case listName = "list_name"
    case segmentOpts = "segment_opts"
    case storeId = "store_id"
  }
}
