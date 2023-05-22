import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2BudgetModel: Codable, Equatable, Content {
  /** Currency code */
  public var currencyCode: String?

  /** Duration of the ad in seconds */
  public var duration: Int?

  /** Total budget of the ad */
  public var totalAmount: Double?

  public init(currencyCode: String? = nil, duration: Int? = nil, totalAmount: Double? = nil) {
    self.currencyCode = currencyCode
    self.duration = duration
    self.totalAmount = totalAmount
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case duration
    case totalAmount = "total_amount"
  }
}
