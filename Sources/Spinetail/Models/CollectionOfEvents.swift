import Foundation
import PrchModel

/** A collection of events for a given contact */
public struct CollectionOfEvents: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of objects, each representing an event. */
  public let events: [Event]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, events: [Event]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.events = events
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case events
    case totalItems = "total_items"
  }
}
