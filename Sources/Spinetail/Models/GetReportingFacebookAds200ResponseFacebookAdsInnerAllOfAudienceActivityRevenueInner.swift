import Foundation
import PrchModel

public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityRevenueInner: Codable, Equatable, Content {
  public let date: String?

  public let revenue: Double?

  public init(date: String? = nil, revenue: Double? = nil) {
    self.date = date
    self.revenue = revenue
  }

  public enum CodingKeys: String, CodingKey {
    case date
    case revenue
  }
}
