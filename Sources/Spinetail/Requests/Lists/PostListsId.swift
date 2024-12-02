import Foundation
import PrchModel

public extension Lists {
  /**
   Batch subscribe or unsubscribe

   Batch subscribe or unsubscribe list members.
   */
  struct PostListsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}"

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

    /** If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false. */
    public let skipDuplicateCheck: Bool?

    public init(body: MembersToSubscribeUnsubscribeToFromaListInBatch, listId: String, skipMergeValidation: Bool? = nil, skipDuplicateCheck: Bool? = nil) {
      self.body = body
      self.listId = listId
      self.skipMergeValidation = skipMergeValidation
      self.skipDuplicateCheck = skipDuplicateCheck
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let skipMergeValidation = self.skipMergeValidation {
        params["skip_merge_validation"] = String(describing: skipMergeValidation)
      }
      if let skipDuplicateCheck = self.skipDuplicateCheck {
        params["skip_duplicate_check"] = String(describing: skipDuplicateCheck)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = BatchUpdateListMembers
    public typealias BodyType = MembersToSubscribeUnsubscribeToFromaListInBatch

    public let body: MembersToSubscribeUnsubscribeToFromaListInBatch
  }
}
