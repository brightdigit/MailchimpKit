import Foundation
import PrchModel

/** [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign. */
public struct RSSOptions: Codable, Equatable, Content {
  /** The frequency of the RSS Campaign. */
  public enum Frequency: String, Codable, Equatable, CaseIterable {
    case daily
    case weekly
    case monthly
  }

  /** Whether to add CSS to images in the RSS feed to constrain their width in campaigns. */
  public let constrainRssImg: Bool?

  /** The URL for the RSS feed. */
  public let feedURL: URL?

  /** The frequency of the RSS Campaign. */
  public let frequency: Frequency?

  /** The date the campaign was last sent. */
  public let lastSent: MailchimpOptionalDate

  public let schedule: SendingSchedule?

  public init(constrainRssImg: Bool? = nil, feedURL: URL? = nil, frequency: Frequency? = nil, lastSent: MailchimpOptionalDate, schedule: SendingSchedule? = nil) {
    self.constrainRssImg = constrainRssImg
    self.feedURL = feedURL
    self.frequency = frequency
    self.lastSent = lastSent
    self.schedule = schedule
  }

  public enum CodingKeys: String, CodingKey {
    case constrainRssImg = "constrain_rss_img"
    case feedURL = "feed_url"
    case frequency
    case lastSent = "last_sent"
    case schedule
  }
}
