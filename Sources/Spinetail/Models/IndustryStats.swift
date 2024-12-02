import Foundation
import PrchModel

/** The [average campaign statistics](https://mailchimp.com/resources/research/email-marketing-benchmarks/?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs) for all campaigns in the account's specified industry. */
public struct IndustryStats: Codable, Equatable, Content {
  /** The average bounce rate for all campaigns in the account's specified industry. */
  public let bounceRate: Double?

  /** The average unique click rate for all campaigns in the account's specified industry. */
  public let clickRate: Double?

  /** The average unique open rate for all campaigns in the account's specified industry. */
  public let openRate: Double?

  public init(bounceRate: Double? = nil, clickRate: Double? = nil, openRate: Double? = nil) {
    self.bounceRate = bounceRate
    self.clickRate = clickRate
    self.openRate = openRate
  }

  public enum CodingKeys: String, CodingKey {
    case bounceRate = "bounce_rate"
    case clickRate = "click_rate"
    case openRate = "open_rate"
  }
}
