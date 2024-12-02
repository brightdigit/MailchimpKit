import Foundation
import PrchModel

/** Information about a specific list segment. */
public struct List8: Codable, Equatable, Content {
  /** The name of the segment. */
  public let name: String

  public let options: Conditions1?

  /** An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array will create a static segment without any subscribers. This field cannot be provided with the options field. */
  public let staticSegment: [String]?

  public init(name: String, options: Conditions1? = nil, staticSegment: [String]? = nil) {
    self.name = name
    self.options = options
    self.staticSegment = staticSegment
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case options
    case staticSegment = "static_segment"
  }
}
