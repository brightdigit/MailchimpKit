import Foundation
import PrchModel

/** A specific feedback message from a specific campaign. */
public struct CampaignFeedback1: Codable, Equatable, Content {
  /** The content of the feedback. */
  public let message: String

  /** The block id for the editable block that the feedback addresses. */
  public let blockId: Int?

  /** The status of feedback. */
  public let isComplete: Bool?

  public init(message: String, blockId: Int? = nil, isComplete: Bool? = nil) {
    self.message = message
    self.blockId = blockId
    self.isComplete = isComplete
  }

  public enum CodingKeys: String, CodingKey {
    case message
    case blockId = "block_id"
    case isComplete = "is_complete"
  }
}
