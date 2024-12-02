import Foundation
import PrchModel

public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOf: Codable, Equatable, Content {
  public let audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Audience?

  public let audienceActivity: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivity?

  public let budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget?

  public let channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel?

  public let reportSummary: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary?

  public init(audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Audience? = nil, audienceActivity: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivity? = nil, budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget? = nil, channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel? = nil, reportSummary: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary? = nil) {
    self.audience = audience
    self.audienceActivity = audienceActivity
    self.budget = budget
    self.channel = channel
    self.reportSummary = reportSummary
  }

  public enum CodingKeys: String, CodingKey {
    case audience
    case audienceActivity = "audience_activity"
    case budget
    case channel
    case reportSummary = "report_summary"
  }
}
