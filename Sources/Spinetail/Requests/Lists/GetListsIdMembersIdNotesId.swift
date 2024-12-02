import Foundation
import PrchModel

public extension Lists {
  /**
   Get member note

   Get a specific note for a specific list member.
   */
  struct GetListsIdMembersIdNotesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)").replacingOccurrences(of: "{" + "note_id" + "}", with: "\(noteId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id. */
    public let subscriberHash: String

    /** The id for the note. */
    public let noteId: String

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    public init(listId: String, subscriberHash: String, noteId: String, fields: [String]? = nil, excludeFields: [String]? = nil) {
      self.listId = listId
      self.subscriberHash = subscriberHash
      self.noteId = noteId
      self.fields = fields
      self.excludeFields = excludeFields
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = MemberNotes
    public typealias BodyType = Empty
  }
}
