import Foundation
import PrchModel

/** Configure a webhook for the given list. */
public struct AddWebhook: Codable, Equatable, Content {
  public let events: Events2?

  public let sources: Sources1?

  /** A valid URL for the Webhook. */
  public let url: String?

  public init(events: Events2? = nil, sources: Sources1? = nil, url: String? = nil) {
    self.events = events
    self.sources = sources
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case events
    case sources
    case url
  }
}
