import Foundation
import PrchModel

public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmount: Codable, Equatable, Content {
  public let amount: Double?

  public let currencyCode: String?

  public init(amount: Double? = nil, currencyCode: String? = nil) {
    self.amount = amount
    self.currencyCode = currencyCode
  }

  public enum CodingKeys: String, CodingKey {
    case amount
    case currencyCode = "currency_code"
  }
}
