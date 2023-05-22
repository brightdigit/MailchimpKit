import Foundation
import PrchModel

public extension Lists {
  /**
   Add member note

   Add a new note for a specific subscriber.
   */
  struct PostListsIdMembersIdNotes: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/notes"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The MD5 hash of the lowercase version of the list member's email address. */
    public var subscriberHash: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postListsIdMembersIdNotes", tag: "lists", method: "POST", path: "/lists/{list_id}/members/{subscriber_hash}/notes", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = MemberNotesModel
    public typealias BodyType = MemberNotes1Model

    public let body: MemberNotes1Model
  }
}
