import Foundation
import PrchModel

public struct TagsInner1: Codable, Equatable, Content {
  /** The unique id for the tag. */
  public let id: Int?

  /** The name of the tag. */
  public let name: String?

  public init(id: Int? = nil, name: String? = nil) {
    self.id = id
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case name
  }
}
