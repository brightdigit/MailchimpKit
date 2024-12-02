import Foundation
import PrchModel

public extension Lists {
  /**
   Add merge field

   Add a new merge field for a specific audience.
   */
  struct PostListsIdMergeFields: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/merge-fields"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public let listId: String

    public init(body: MergeField1, listId: String) {
      self.body = body
      self.listId = listId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = MergeField
    public typealias BodyType = MergeField1

    public let body: MergeField1
  }
}
