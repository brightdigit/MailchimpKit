import Foundation
import PrchModel

/** The clicks and visits data from the last five weeks. */
public struct WeeklyClicksAndVisitsData: Codable, Equatable, Content {
  /** The total number of clicks in a week. */
  public let clicks: [Clicks1Inner1]?

  public let uniqueVisits: [UniqueVisitsInner]?

  /** The total number of visits in a week. */
  public let visits: [VisitsInner1]?

  public init(clicks: [Clicks1Inner1]? = nil, uniqueVisits: [UniqueVisitsInner]? = nil, visits: [VisitsInner1]? = nil) {
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
