import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerce: Codable, Equatable, Content {
  public let averageOrderRevenue: Double?

  public let currencyCode: String?

  public let totalRevenue: Double?

  public init(averageOrderRevenue: Double? = nil, currencyCode: String? = nil, totalRevenue: Double? = nil) {
    self.averageOrderRevenue = averageOrderRevenue
    self.currencyCode = currencyCode
    self.totalRevenue = totalRevenue
  }

  public enum CodingKeys: String, CodingKey {
    case averageOrderRevenue = "average_order_revenue"
    case currencyCode = "currency_code"
    case totalRevenue = "total_revenue"
  }
}
