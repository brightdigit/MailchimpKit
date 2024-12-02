import Foundation
import PrchModel

public struct LandingPageReportTimeseries: Codable, Equatable, Content {
  public let dailyStats: DailyClicksAndVisitsData?

  public let weeklyStats: WeeklyClicksAndVisitsData?

  public init(dailyStats: DailyClicksAndVisitsData? = nil, weeklyStats: WeeklyClicksAndVisitsData? = nil) {
    self.dailyStats = dailyStats
    self.weeklyStats = weeklyStats
  }

  public enum CodingKeys: String, CodingKey {
    case dailyStats = "daily_stats"
    case weeklyStats = "weekly_stats"
  }
}
