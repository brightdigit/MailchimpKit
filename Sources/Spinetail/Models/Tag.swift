import Foundation
import PrchModel

public struct Tag: Codable, Equatable, Content {
  /** The unique id for the tag. */
  public let tagId: Int?

  /** The name of the tag. */
  public let tagName: String?

  public init(tagId: Int? = nil, tagName: String? = nil) {
    self.tagId = tagId
    self.tagName = tagName
  }

  public enum CodingKeys: String, CodingKey {
    case tagId = "tag_id"
    case tagName = "tag_name"
  }
}
