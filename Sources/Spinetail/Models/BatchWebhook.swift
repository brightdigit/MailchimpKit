import Foundation
import PrchModel

/** A webhook configured for batch status updates. */
public struct BatchWebhook: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** A string that uniquely identifies this Batch Webhook. */
  public let id: String?

  /** A valid URL for the Webhook. */
  public let url: String?

  public init(links: [ResourceLink]? = nil, id: String? = nil, url: String? = nil) {
    self.links = links
    self.id = id
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case id
    case url
  }
}
