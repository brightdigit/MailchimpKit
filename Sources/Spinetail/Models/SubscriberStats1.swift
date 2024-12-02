import Foundation
import PrchModel

/** Open and click rates for this subscriber. */
public struct SubscriberStats1: Codable, Equatable, Content {
  /** A subscriber's average clickthrough rate. */
  public let avgClickRate: Double?

  /** A subscriber's average open rate. */
  public let avgOpenRate: Double?

  public let ecommerceData: EcommerceStats?

  public init(avgClickRate: Double? = nil, avgOpenRate: Double? = nil, ecommerceData: EcommerceStats? = nil) {
    self.avgClickRate = avgClickRate
    self.avgOpenRate = avgOpenRate
    self.ecommerceData = ecommerceData
  }

  public enum CodingKeys: String, CodingKey {
    case avgClickRate = "avg_click_rate"
    case avgOpenRate = "avg_open_rate"
    case ecommerceData = "ecommerce_data"
  }
}
