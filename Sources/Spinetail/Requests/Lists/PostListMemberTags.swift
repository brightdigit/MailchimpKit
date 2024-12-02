import Foundation
import PrchModel

public extension Lists {
  /**
   Add or remove member tags

   Add or remove tags from a list member. If a tag that does not exist is passed in and set as 'active', a new tag will be created.
   */
  struct PostListMemberTags: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/tags"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The MD5 hash of the lowercase version of the list member's email address. */
    public let subscriberHash: String

    public init(body: MemberTags, listId: String, subscriberHash: String) {
      self.body = body
      self.listId = listId
      self.subscriberHash = subscriberHash
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = MemberTags

    public let body: MemberTags
  }
}
