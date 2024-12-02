import Foundation
import PrchModel

/** Campaign feedback details. */
public struct CampaignAdvice: Codable, Equatable, Content {
  /** The sentiment type for a feedback message. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case negative
    case positive
    case neutral
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The advice message. */
  public let message: String?

  /** The sentiment type for a feedback message. */
  public let type: `Type`?

  public init(links: [ResourceLink]? = nil, message: String? = nil, type: Type? = nil) {
    self.links = links
    self.message = message
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case message
    case type
  }
}
