import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf1: Codable, Equatable, Content {
  public let emailSourceName: String?

  public let endTime: MailchimpOptionalDate

  public let needsAttention: Bool?

  public let pausedAt: MailchimpOptionalDate

  public let wasCanceledByFacebook: Bool?

  public init(emailSourceName: String? = nil, endTime: MailchimpOptionalDate, needsAttention: Bool? = nil, pausedAt: MailchimpOptionalDate, wasCanceledByFacebook: Bool? = nil) {
    self.emailSourceName = emailSourceName
    self.endTime = endTime
    self.needsAttention = needsAttention
    self.pausedAt = pausedAt
    self.wasCanceledByFacebook = wasCanceledByFacebook
  }

  public enum CodingKeys: String, CodingKey {
    case emailSourceName = "email_source_name"
    case endTime = "end_time"
    case needsAttention = "needs_attention"
    case pausedAt = "paused_at"
    case wasCanceledByFacebook = "was_canceled_by_facebook"
  }
}
