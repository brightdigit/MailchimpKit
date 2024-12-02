import Foundation
import PrchModel

/** The most recent Note added about this member. */
public struct Notes: Codable, Equatable, Content {
  /** The date and time the note was created in ISO 8601 format. */
  public let createdAt: MailchimpOptionalDate

  /** The author of the note. */
  public let createdBy: String?

  /** The content of the note. */
  public let note: String?

  /** The note id. */
  public let noteId: Int?

  public init(createdAt: MailchimpOptionalDate, createdBy: String? = nil, note: String? = nil, noteId: Int? = nil) {
    self.createdAt = createdAt
    self.createdBy = createdBy
    self.note = note
    self.noteId = noteId
  }

  public enum CodingKeys: String, CodingKey {
    case createdAt = "created_at"
    case createdBy = "created_by"
    case note
    case noteId = "note_id"
  }
}
