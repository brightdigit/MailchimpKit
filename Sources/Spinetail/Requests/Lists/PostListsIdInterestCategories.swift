import Foundation
import PrchModel

public extension Lists {
  /**
   Add interest category

   Create a new interest category.
   */
  struct PostListsIdInterestCategories: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public let listId: String

    public init(body: InterestCategory1, listId: String) {
      self.body = body
      self.listId = listId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = InterestCategory
    public typealias BodyType = InterestCategory1

    public let body: InterestCategory1
  }
}
