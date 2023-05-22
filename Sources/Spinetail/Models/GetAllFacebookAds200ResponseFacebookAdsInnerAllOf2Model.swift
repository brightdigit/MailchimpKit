import Foundation

import PrchModel
/** A facebook ad. */
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Model: Codable, Equatable, Content {
  public var audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceModel?

  public var budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2BudgetModel?

  public var channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ChannelModel?

  public var content: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentModel?

  public var feedback: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2FeedbackModel?

  /** Check if this ad has audience setup */
  public var hasAudience: Bool?

  /** Check if this ad has content */
  public var hasContent: Bool?

  /** Check if this ad is connected to a facebook page */
  public var isConnected: Bool?

  public var site: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2SiteModel?

  public init(audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceModel? = nil, budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2BudgetModel? = nil, channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ChannelModel? = nil, content: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentModel? = nil, feedback: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2FeedbackModel? = nil, hasAudience: Bool? = nil, hasContent: Bool? = nil, isConnected: Bool? = nil, site: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2SiteModel? = nil) {
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

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
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
