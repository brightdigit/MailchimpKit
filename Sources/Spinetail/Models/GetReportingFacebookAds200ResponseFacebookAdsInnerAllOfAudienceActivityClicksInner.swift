import Foundation
import PrchModel

public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityClicksInner: Codable, Equatable, Content {
  public let clicks: Int?

  public let date: String?

  public init(clicks: Int? = nil, date: String? = nil) {
    self.clicks = clicks
    self.date = date
  }

  public enum CodingKeys: String, CodingKey {
    case clicks
    case date
  }
}
