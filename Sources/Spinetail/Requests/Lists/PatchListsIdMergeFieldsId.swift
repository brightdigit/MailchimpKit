import Foundation
import PrchModel

public extension Lists {
  /**
   Update merge field

   Update a specific merge field.
   */
  struct PatchListsIdMergeFieldsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/merge-fields/{merge_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "merge_id" + "}", with: "\(mergeId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The id for the merge field. */
    public let mergeId: String

    public init(body: MergeField2, listId: String, mergeId: String) {
      self.body = body
      self.listId = listId
      self.mergeId = mergeId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = MergeField
    public typealias BodyType = MergeField2

    public let body: MergeField2
  }
}
