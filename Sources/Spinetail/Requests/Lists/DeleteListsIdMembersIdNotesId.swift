import Foundation
import PrchModel

public extension Lists {
  /**
   Delete note

   Delete a specific note for a specific list member.
   */
  struct DeleteListsIdMembersIdNotesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)").replacingOccurrences(of: "{" + "note_id" + "}", with: "\(noteId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id. */
    public let subscriberHash: String

    /** The id for the note. */
    public let noteId: String

    public init(listId: String, subscriberHash: String, noteId: String) {
      self.listId = listId
      self.subscriberHash = subscriberHash
      self.noteId = noteId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
