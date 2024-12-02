import Foundation
import PrchModel

/** An individual tweet. */
public struct TwitterStatus: Codable, Equatable, Content {
  /** A timestamp for the tweet. */
  public let datetime: MailchimpOptionalDate

  /** A 'true' or 'false' status of whether the tweet is a retweet. */
  public let isRetweet: Bool?

  /** The Twitter handle for the author of the tweet. */
  public let screenName: String?

  /** The body of the tweet. */
  public let status: String?

  /** The individual id for the tweet. */
  public let statusId: String?

  public init(datetime: MailchimpOptionalDate, isRetweet: Bool? = nil, screenName: String? = nil, status: String? = nil, statusId: String? = nil) {
    self.datetime = datetime
    self.isRetweet = isRetweet
    self.screenName = screenName
    self.status = status
    self.statusId = statusId
  }

  public enum CodingKeys: String, CodingKey {
    case datetime
    case isRetweet = "is_retweet"
    case screenName = "screen_name"
    case status
    case statusId = "status_id"
  }
}
