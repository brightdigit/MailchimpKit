import Foundation
import PrchModel

public struct GetReportsIdEcommerceProductActivity200ResponseProductsInner: Codable, Equatable, Content {
  public let currencyCode: String?

  public let imageURL: String?

  public let recommendationPurchased: Int?

  public let recommendationTotal: Int?

  public let sku: String?

  public let title: String?

  public let totalPurchased: Double?

  public let totalRevenue: Double?

  public init(currencyCode: String? = nil, imageURL: String? = nil, recommendationPurchased: Int? = nil, recommendationTotal: Int? = nil, sku: String? = nil, title: String? = nil, totalPurchased: Double? = nil, totalRevenue: Double? = nil) {
    self.currencyCode = currencyCode
    self.imageURL = imageURL
    self.recommendationPurchased = recommendationPurchased
    self.recommendationTotal = recommendationTotal
    self.sku = sku
    self.title = title
    self.totalPurchased = totalPurchased
    self.totalRevenue = totalRevenue
  }

  public enum CodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case imageURL = "image_url"
    case recommendationPurchased = "recommendation_purchased"
    case recommendationTotal = "recommendation_total"
    case sku
    case title
    case totalPurchased = "total_purchased"
    case totalRevenue = "total_revenue"
  }
}
