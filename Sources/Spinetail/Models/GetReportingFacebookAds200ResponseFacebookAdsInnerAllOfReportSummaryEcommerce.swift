import Foundation
import PrchModel

public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerce: Codable, Equatable, Content {
  public let currencyCode: String?

  public let totalRevenue: Double?

  public init(currencyCode: String? = nil, totalRevenue: Double? = nil) {
    self.currencyCode = currencyCode
    self.totalRevenue = totalRevenue
  }

  public enum CodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case totalRevenue = "total_revenue"
  }
}
