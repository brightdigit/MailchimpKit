import Foundation
import PrchModel

/** [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign. */
public struct RSSOptions3: Codable, Equatable, Content {
  /** The frequency of the RSS Campaign. */
  public enum Frequency: String, Codable, Equatable, CaseIterable {
    case daily
    case weekly
    case monthly
  }

  /** The URL for the RSS feed. */
  public let feedURL: URL

  /** The frequency of the RSS Campaign. */
  public let frequency: Frequency

  /** Whether to add CSS to images in the RSS feed to constrain their width in campaigns. */
  public let constrainRssImg: Bool?

  /** The date the campaign was last sent. */
  public let lastSent: MailchimpOptionalDate

  public let schedule: SendingSchedule1?

  public init(feedURL: URL, frequency: Frequency, constrainRssImg: Bool? = nil, lastSent: MailchimpOptionalDate, schedule: SendingSchedule1? = nil) {
    self.feedURL = feedURL
    self.frequency = frequency
    self.constrainRssImg = constrainRssImg
    self.lastSent = lastSent
    self.schedule = schedule
  }

  public enum CodingKeys: String, CodingKey {
    case feedURL = "feed_url"
    case frequency
    case constrainRssImg = "constrain_rss_img"
    case lastSent = "last_sent"
    case schedule
  }
}
