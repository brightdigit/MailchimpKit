import Foundation
import PrchModel

/** A specific feedback message from a specific campaign. */
public struct CampaignFeedback3: Codable, Equatable, Content {
  /** The block id for the editable block that the feedback addresses. */
  public let blockId: Int?

  /** The status of feedback. */
  public let isComplete: Bool?

  /** The content of the feedback. */
  public let message: String?

  public init(blockId: Int? = nil, isComplete: Bool? = nil, message: String? = nil) {
    self.blockId = blockId
    self.isComplete = isComplete
    self.message = message
  }

  public enum CodingKeys: String, CodingKey {
    case blockId = "block_id"
    case isComplete = "is_complete"
    case message
  }
}
