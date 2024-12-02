import Foundation
import PrchModel

/** The send checklist for the campaign. */
public struct SendChecklist: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** Whether the campaign is ready to send. */
  public let isReady: Bool?

  /** A list of feedback items to review before sending your campaign. */
  public let items: [ItemsInner]?

  public init(links: [ResourceLink]? = nil, isReady: Bool? = nil, items: [ItemsInner]? = nil) {
    self.links = links
    self.isReady = isReady
    self.items = items
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case isReady = "is_ready"
    case items
  }
}
