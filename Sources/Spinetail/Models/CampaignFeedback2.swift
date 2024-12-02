import Foundation
import PrchModel

/** A specific feedback message from a specific campaign. */
public struct CampaignFeedback2: Codable, Equatable, Content {
  /** The source of the feedback. */
  public enum Source: String, Codable, Equatable, CaseIterable {
    case api
    case email
    case sms
    case web
    case ios
    case android
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The block id for the editable block that the feedback addresses. */
  public let blockId: Int?

  /** The unique id for the campaign. */
  public let campaignId: String?

  /** The date and time the feedback item was created in ISO 8601 format. */
  public let createdAt: MailchimpOptionalDate

  /** The login name of the user who created the feedback. */
  public let createdBy: String?

  /** The individual id for the feedback item. */
  public let feedbackId: Int?

  /** The status of feedback. */
  public let isComplete: Bool?

  /** The content of the feedback. */
  public let message: String?

  /** If a reply, the id of the parent feedback item. */
  public let parentId: Int?

  /** The source of the feedback. */
  public let source: Source?

  /** The date and time the feedback was last updated in ISO 8601 format. */
  public let updatedAt: MailchimpOptionalDate

  public init(links: [ResourceLink]? = nil, blockId: Int? = nil, campaignId: String? = nil, createdAt: MailchimpOptionalDate, createdBy: String? = nil, feedbackId: Int? = nil, isComplete: Bool? = nil, message: String? = nil, parentId: Int? = nil, source: Source? = nil, updatedAt: MailchimpOptionalDate) {
    self.links = links
    self.blockId = blockId
    self.campaignId = campaignId
    self.createdAt = createdAt
    self.createdBy = createdBy
    self.feedbackId = feedbackId
    self.isComplete = isComplete
    self.message = message
    self.parentId = parentId
    self.source = source
    self.updatedAt = updatedAt
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case blockId = "block_id"
    case campaignId = "campaign_id"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case feedbackId = "feedback_id"
    case isComplete = "is_complete"
    case message
    case parentId = "parent_id"
    case source
    case updatedAt = "updated_at"
  }
}
