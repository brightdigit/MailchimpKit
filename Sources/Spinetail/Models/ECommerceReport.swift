import Foundation
import PrchModel

/** E-Commerce stats for a campaign. */
public struct ECommerceReport: Codable, Equatable, Content {
  /** The total orders for a campaign. */
  public let totalOrders: Int?

  /** The total revenue for a campaign. Calculated as the sum of all order totals minus shipping and tax totals. */
  public let totalRevenue: Double?

  /** The total spent for a campaign. Calculated as the sum of all order totals with no deductions. */
  public let totalSpent: Double?

  public init(totalOrders: Int? = nil, totalRevenue: Double? = nil, totalSpent: Double? = nil) {
    self.totalOrders = totalOrders
    self.totalRevenue = totalRevenue
    self.totalSpent = totalSpent
  }

  public enum CodingKeys: String, CodingKey {
    case totalOrders = "total_orders"
    case totalRevenue = "total_revenue"
    case totalSpent = "total_spent"
  }
}