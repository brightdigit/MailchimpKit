import Foundation
import PrchModel

/** A facebook ad. */
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2: Codable, Equatable, Content {
  public let audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Audience?

  public let budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget?

  public let channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel?

  public let content: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Content?

  public let feedback: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Feedback?

  /** Check if this ad has audience setup */
  public let hasAudience: Bool?

  /** Check if this ad has content */
  public let hasContent: Bool?

  /** Check if this ad is connected to a facebook page */
  public let isConnected: Bool?

  public let site: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Site?

  public init(audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Audience? = nil, budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget? = nil, channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel? = nil, content: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Content? = nil, feedback: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Feedback? = nil, hasAudience: Bool? = nil, hasContent: Bool? = nil, isConnected: Bool? = nil, site: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Site? = nil) {
    self.audience = audience
    self.budget = budget
    self.channel = channel
    self.content = content
    self.feedback = feedback
    self.hasAudience = hasAudience
    self.hasContent = hasContent
    self.isConnected = isConnected
    self.site = site
  }

  public enum CodingKeys: String, CodingKey {
    case audience
    case budget
    case channel
    case content
    case feedback
    case hasAudience = "has_audience"
    case hasContent = "has_content"
    case isConnected = "is_connected"
    case site
  }
}
