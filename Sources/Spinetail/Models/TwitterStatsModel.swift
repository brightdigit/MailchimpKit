import Foundation

import PrchModel
/** A summary of Twitter activity for a campaign. */
public struct TwitterStatsModel: Codable, Equatable, Content {
  /** The day and time of the first recorded tweet with a link to the campaign. */
  public var firstTweet: String?

  /** The day and time of the last recorded tweet with a link to the campaign. */
  public var lastTweet: String?

  /** The number of retweets that include a link to the campaign. */
  public var retweets: Int?

  /** A summary of tweets that include a link to the campaign. */
  public var statuses: [TwitterStatusModel]?

  /** The number of tweets including a link to the campaign. */
  public var tweets: Int?

  public init(firstTweet: String? = nil, lastTweet: String? = nil, retweets: Int? = nil, statuses: [TwitterStatusModel]? = nil, tweets: Int? = nil) {
    self.firstTweet = firstTweet
    self.lastTweet = lastTweet
    self.retweets = retweets
    self.statuses = statuses
    self.tweets = tweets
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case firstTweet = "first_tweet"
    case lastTweet = "last_tweet"
    case retweets
    case statuses
    case tweets
  }
}
