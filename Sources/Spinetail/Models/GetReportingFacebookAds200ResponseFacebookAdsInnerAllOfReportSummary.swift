import Foundation
import PrchModel

/** Report summary of facebook ad */
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary: Codable, Equatable, Content {
  public let averageDailyBudget: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmount?

  public let averageOrderAmount: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmount?

  public let clickRate: Double?

  public let clicks: Int?

  public let comments: Int?

  public let costPerClick: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmount?

  public let ecommerce: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerce?

  public let extendedAt: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryExtendedAt?

  public let firstTimeBuyers: Int?

  public let hasExtendedAdDuration: Bool?

  public let impressions: Int?

  public let likes: Int?

  public let reach: Int?

  public let returnOnInvestment: Double?

  public let shares: Int?

  public let totalOrders: Int?

  public let totalProductsSold: Int?

  public let uniqueClicks: Int?

  public init(
    averageDailyBudget: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmount? = nil,
    averageOrderAmount: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmount? = nil,
    clickRate: Double? = nil, clicks: Int? = nil, comments: Int? = nil, costPerClick: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmount? = nil,
    ecommerce: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerce? = nil,
    extendedAt: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryExtendedAt? = nil,
    firstTimeBuyers: Int? = nil, hasExtendedAdDuration: Bool? = nil, impressions: Int? = nil,
    likes: Int? = nil, reach: Int? = nil, returnOnInvestment: Double? = nil, shares: Int? = nil, totalOrders: Int? = nil,
    totalProductsSold: Int? = nil, uniqueClicks: Int? = nil
  ) {
    self.averageDailyBudget = averageDailyBudget
    self.averageOrderAmount = averageOrderAmount
    self.clickRate = clickRate
    self.clicks = clicks
    self.comments = comments
    self.costPerClick = costPerClick
    self.ecommerce = ecommerce
    self.extendedAt = extendedAt
    self.firstTimeBuyers = firstTimeBuyers
    self.hasExtendedAdDuration = hasExtendedAdDuration
    self.impressions = impressions
    self.likes = likes
    self.reach = reach
    self.returnOnInvestment = returnOnInvestment
    self.shares = shares
    self.totalOrders = totalOrders
    self.totalProductsSold = totalProductsSold
    self.uniqueClicks = uniqueClicks
  }

  public enum CodingKeys: String, CodingKey {
    case averageDailyBudget = "average_daily_budget"
    case averageOrderAmount = "average_order_amount"
    case clickRate = "click_rate"
    case clicks
    case comments
    case costPerClick = "cost_per_click"
    case ecommerce
    case extendedAt = "extended_at"
    case firstTimeBuyers = "first_time_buyers"
    case hasExtendedAdDuration = "has_extended_ad_duration"
    case impressions
    case likes
    case reach
    case returnOnInvestment = "return_on_investment"
    case shares
    case totalOrders = "total_orders"
    case totalProductsSold = "total_products_sold"
    case uniqueClicks = "unique_clicks"
  }
}
