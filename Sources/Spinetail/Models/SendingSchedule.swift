import Foundation
import PrchModel

/** The schedule for sending the RSS Campaign. */
public struct SendingSchedule: Codable, Equatable, Content {
  /** The day of the week to send a weekly RSS Campaign. */
  public enum WeeklySendDay: String, Codable, Equatable, CaseIterable {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
  }

  public let dailySend: DailySendingDays?

  /** The hour to send the campaign in local time. Acceptable hours are 0-23. For example, '4' would be 4am in [your account's default time zone](https://mailchimp.com/help/set-account-defaults/). */
  public let hour: Int?

  /** The day of the month to send a monthly RSS Campaign. Acceptable days are 0-31, where '0' is always the last day of a month. Months with fewer than the selected number of days will not have an RSS campaign sent out that day. For example, RSS CampaignsModel set to send on the 30th will not go out in February. */
  public let monthlySendDate: Double?

  /** The day of the week to send a weekly RSS Campaign. */
  public let weeklySendDay: WeeklySendDay?

  public init(dailySend: DailySendingDays? = nil, hour: Int? = nil, monthlySendDate: Double? = nil, weeklySendDay: WeeklySendDay? = nil) {
    self.dailySend = dailySend
    self.hour = hour
    self.monthlySendDate = monthlySendDate
    self.weeklySendDay = weeklySendDay
  }

  public enum CodingKeys: String, CodingKey {
    case dailySend = "daily_send"
    case hour
    case monthlySendDate = "monthly_send_date"
    case weeklySendDay = "weekly_send_day"
  }
}
