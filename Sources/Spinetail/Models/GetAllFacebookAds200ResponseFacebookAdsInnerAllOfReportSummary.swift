import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary: Codable, Equatable, Content {
  public let clickRate: Double?

  public let clicks: Int?

  public let conversionRate: Double?

  public let ecommerce: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerce?

  public let engagements: Int?

  public let impressions: Double?

  public let openRate: Double?

  public let opens: Int?

  public let reach: Int?

  public let subscriberClicks: Int?

  public let subscribes: Int?

  public let totalSent: Int?

  public let uniqueOpens: Int?

  public let uniqueVisits: Int?

  public let visits: Int?

  public init(clickRate: Double? = nil, clicks: Int? = nil, conversionRate: Double? = nil, ecommerce: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerce? = nil, engagements: Int? = nil, impressions: Double? = nil, openRate: Double? = nil, opens: Int? = nil, reach: Int? = nil, subscriberClicks: Int? = nil, subscribes: Int? = nil, totalSent: Int? = nil, uniqueOpens: Int? = nil, uniqueVisits: Int? = nil, visits: Int? = nil) {
    self.clickRate = clickRate
    self.clicks = clicks
    self.conversionRate = conversionRate
    self.ecommerce = ecommerce
    self.engagements = engagements
    self.impressions = impressions
    self.openRate = openRate
    self.opens = opens
    self.reach = reach
    self.subscriberClicks = subscriberClicks
    self.subscribes = subscribes
    self.totalSent = totalSent
    self.uniqueOpens = uniqueOpens
    self.uniqueVisits = uniqueVisits
    self.visits = visits
  }

  public enum CodingKeys: String, CodingKey {
    case clickRate = "click_rate"
    case clicks
    case conversionRate = "conversion_rate"
    case ecommerce
    case engagements
    case impressions
    case openRate = "open_rate"
    case opens
    case reach
    case subscriberClicks = "subscriber_clicks"
    case subscribes
    case totalSent = "total_sent"
    case uniqueOpens = "unique_opens"
    case uniqueVisits = "unique_visits"
    case visits
  }
}
