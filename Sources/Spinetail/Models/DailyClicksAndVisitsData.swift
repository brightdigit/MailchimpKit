import Foundation
import PrchModel

/** The clicks and visits data from the last seven days. */
public struct DailyClicksAndVisitsData: Codable, Equatable, Content {
  public let clicks: [Clicks1Inner]?

  public let uniqueVisits: [UniqueVisitsInner]?

  public let visits: [VisitsInner]?

  public init(clicks: [Clicks1Inner]? = nil, uniqueVisits: [UniqueVisitsInner]? = nil, visits: [VisitsInner]? = nil) {
    self.clicks = clicks
    self.uniqueVisits = uniqueVisits
    self.visits = visits
  }

  public enum CodingKeys: String, CodingKey {
    case clicks
    case uniqueVisits = "unique_visits"
    case visits
  }
}
