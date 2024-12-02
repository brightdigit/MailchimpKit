import Foundation
import PrchModel

public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityImpressionsInner: Codable, Equatable, Content {
  public let date: String?

  public let impressions: Int?

  public init(date: String? = nil, impressions: Int? = nil) {
    self.date = date
    self.impressions = impressions
  }

  public enum CodingKeys: String, CodingKey {
    case date
    case impressions
  }
}
