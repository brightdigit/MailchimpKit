import Foundation
import PrchModel

public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivity: Codable, Equatable, Content {
  public let clicks: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityClicksInner]?

  public let impressions: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityImpressionsInner]?

  public let revenue: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityRevenueInner]?

  public init(clicks: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityClicksInner]? = nil, impressions: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityImpressionsInner]? = nil, revenue: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityRevenueInner]? = nil) {
    self.clicks = clicks
    self.impressions = impressions
    self.revenue = revenue
  }

  public enum CodingKeys: String, CodingKey {
    case clicks
    case impressions
    case revenue
  }
}
