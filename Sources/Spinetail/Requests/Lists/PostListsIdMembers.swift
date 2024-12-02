import Foundation
import PrchModel

public extension Lists {
  /**
   Add member to list

   Add a new member to the list.
   */
  struct PostListsIdMembers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public let listId: String

    /** If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. */
    public let skipMergeValidation: Bool?

    public init(body: AddListMembers1, listId: String, skipMergeValidation: Bool? = nil) {
      self.body = body
      self.listId = listId
      self.skipMergeValidation = skipMergeValidation
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let skipMergeValidation = self.skipMergeValidation {
        params["skip_merge_validation"] = String(describing: skipMergeValidation)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ListMembers2
    public typealias BodyType = AddListMembers1

    public let body: AddListMembers1
  }
}
