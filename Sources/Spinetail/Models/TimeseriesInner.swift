import Foundation
import PrchModel

public struct TimeseriesInner: Codable, Equatable, Content {
  /** The number of emails sent in the timeseries. */
  public let emailsSent: Int?

  /** The number of clicks in the timeseries. */
  public let recipientsClicks: Int?

  /** The date and time for the series in ISO 8601 format. */
  public let timestamp: MailchimpOptionalDate

  /** The number of unique opens in the timeseries. */
  public let uniqueOpens: Int?

  public init(emailsSent: Int? = nil, recipientsClicks: Int? = nil, timestamp: MailchimpOptionalDate, uniqueOpens: Int? = nil) {
    self.emailsSent = emailsSent
    self.recipientsClicks = recipientsClicks
    self.timestamp = timestamp
    self.uniqueOpens = uniqueOpens
  }

  public enum CodingKeys: String, CodingKey {
    case emailsSent = "emails_sent"
    case recipientsClicks = "recipients_clicks"
    case timestamp
    case uniqueOpens = "unique_opens"
  }
}
