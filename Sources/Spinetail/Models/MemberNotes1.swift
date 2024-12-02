import Foundation
import PrchModel

/** A specific note for a specific member. */
public struct MemberNotes1: Codable, Equatable, Content {
  /** The content of the note. Note length is limited to 1,000 characters. */
  public let note: String?

  public init(note: String? = nil) {
    self.note = note
  }

  public enum CodingKeys: String, CodingKey {
    case note
  }
}
