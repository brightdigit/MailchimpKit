import Foundation
import PrchModel

/** Ecommerce stats for the list member if the list is attached to a store. */
public struct EcommerceStats: Codable, Equatable, Content {
  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public let currencyCode: String?

  /** The total number of orders placed by the list member. */
  public let numberOfOrders: Double?

  /** The total revenue the list member has brought in. */
  public let totalRevenue: Double?

  public init(currencyCode: String? = nil, numberOfOrders: Double? = nil, totalRevenue: Double? = nil) {
    self.currencyCode = currencyCode
    self.numberOfOrders = numberOfOrders
    self.totalRevenue = totalRevenue
  }

  public enum CodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case numberOfOrders = "number_of_orders"
    case totalRevenue = "total_revenue"
  }
}
