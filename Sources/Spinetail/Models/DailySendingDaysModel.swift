import Foundation

import PrchModel
/** The days of the week to send a daily RSS Campaign. */
public struct DailySendingDaysModel: Codable, Equatable, Content {
  /** Sends the daily RSS Campaign on Fridays. */
  public var friday: Bool?

  /** Sends the daily RSS Campaign on Mondays. */
  public var monday: Bool?

  /** Sends the daily RSS Campaign on Saturdays. */
  public var saturday: Bool?

  /** Sends the daily RSS Campaign on Sundays. */
  public var sunday: Bool?

  /** Sends the daily RSS Campaign on Thursdays. */
  public var thursday: Bool?

  /** Sends the daily RSS Campaign on Tuesdays. */
  public var tuesday: Bool?

  /** Sends the daily RSS Campaign on Wednesdays. */
  public var wednesday: Bool?

  public init(friday: Bool? = nil, monday: Bool? = nil, saturday: Bool? = nil, sunday: Bool? = nil, thursday: Bool? = nil, tuesday: Bool? = nil, wednesday: Bool? = nil) {
    self.friday = friday
    self.monday = monday
    self.saturday = saturday
    self.sunday = sunday
    self.thursday = thursday
    self.tuesday = tuesday
    self.wednesday = wednesday
  }

  public enum CodingKeys: String, CodingKey {
    case friday
    case monday
    case saturday
    case sunday
    case thursday
    case tuesday
    case wednesday
  }
}
