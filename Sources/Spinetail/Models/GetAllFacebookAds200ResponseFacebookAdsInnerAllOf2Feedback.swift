import Foundation
import PrchModel

/** Check if this ad is connected to a facebook page */
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Feedback: Codable, Equatable, Content {
  /** Feedback regarding the audience of this Ad. */
  public let audience: String?

  /** Feedback regarding the budget of this Ad. */
  public let budget: String?

  /** Feedback regarding the compliance of this Ad. */
  public let compliance: String?

  /** Feedback regarding the content of this Ad. */
  public let content: String?

  public init(audience: String? = nil, budget: String? = nil, compliance: String? = nil, content: String? = nil) {
    self.audience = audience
    self.budget = budget
    self.compliance = compliance
    self.content = content
  }

  public enum CodingKeys: String, CodingKey {
    case audience
    case budget
    case compliance
    case content
  }
}
