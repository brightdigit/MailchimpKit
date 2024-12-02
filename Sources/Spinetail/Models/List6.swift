import Foundation
import PrchModel

/** List settings for the campaign. */
public struct List6: Codable, Equatable, Content {
  /** The unique list id. */
  public let listId: String

  /** The name of the list. */
  public let listName: String?

  /** Count of the recipients on the associated list. Formatted as an integer. */
  public let recipientCount: Int?

  public let segmentOpts: SegmentOptions1?

  /** A description of the [segment](https://mailchimp.com/help/save-and-manage-segments/) used for the campaign. Formatted as a string marked up with HTML. */
  public let segmentText: String?

  public init(listId: String, listName: String? = nil, recipientCount: Int? = nil, segmentOpts: SegmentOptions1? = nil, segmentText: String? = nil) {
    self.listId = listId
    self.listName = listName
    self.recipientCount = recipientCount
    self.segmentOpts = segmentOpts
    self.segmentText = segmentText
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case listName = "list_name"
    case recipientCount = "recipient_count"
    case segmentOpts = "segment_opts"
    case segmentText = "segment_text"
  }
}
