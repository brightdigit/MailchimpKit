import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget: Codable, Equatable, Content {
  /** Currency code */
  public let currencyCode: String?

  /** Duration of the ad in seconds */
  public let duration: Int?

  /** Total budget of the ad */
  public let totalAmount: Double?

  public init(currencyCode: String? = nil, duration: Int? = nil, totalAmount: Double? = nil) {
    self.currencyCode = currencyCode
    self.duration = duration
    self.totalAmount = totalAmount
  }

  public enum CodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case duration
    case totalAmount = "total_amount"
  }
}
