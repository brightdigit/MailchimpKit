import Foundation
import PrchModel

public extension Lists {
  /**
   Delete list member

   Delete all personally identifiable information related to a list member, and remove them from a list. This will make it impossible to re-import the list member.
   */
  struct PostListsIdMembersHashActionsDeletePermanent: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/actions/delete-permanent"

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

    // public static let service = APIService<Response>(id: "postListsIdMembersHashActionsDeletePermanent", tag: "lists", method: "POST", path: "/lists/{list_id}/members/{subscriber_hash}/actions/delete-permanent", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
