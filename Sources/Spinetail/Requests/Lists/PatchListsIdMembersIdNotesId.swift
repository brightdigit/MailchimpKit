import Foundation
import PrchModel

public extension Lists {
  /**
   Update note

   Update a specific note for a specific list member.
   */
  struct PatchListsIdMembersIdNotesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)").replacingOccurrences(of: "{" + "note_id" + "}", with: "\(noteId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id. */
    public var subscriberHash: String

    /** The id for the note. */
    public var noteId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = MemberNotes
    public typealias BodyType = MemberNotes1

    public let body: MemberNotes1
  }
}
