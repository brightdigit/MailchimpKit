import Foundation
import PrchModel

public struct ItemsInner: Codable, Equatable, Content {
  /** The item type. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case success
    case warning
    case error
  }

  /** Details about the specific feedback item. */
  public let details: String?

  /** The heading for the specific item. */
  public let heading: String?

  /** The ID for the specific item. */
  public let id: Int?

  /** The item type. */
  public let type: `Type`?

  public init(details: String? = nil, heading: String? = nil, id: Int? = nil, type: Type? = nil) {
    self.details = details
    self.heading = heading
    self.id = id
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case details
    case heading
    case id
    case type
  }
}
