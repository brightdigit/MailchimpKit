import Foundation
import PrchModel

/** An array of Chimp Chatter messages. There's a maximum of 200 messages present for an account. */
public struct GetActivityFeedChimpChatter200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of Chimp Chatter messages. There's a maximum of 200 messages present for an account. */
  public let chimpChatter: [ChimpChatter]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, chimpChatter: [ChimpChatter]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.chimpChatter = chimpChatter
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case chimpChatter = "chimp_chatter"
    case totalItems = "total_items"
  }
}
