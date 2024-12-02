import Foundation
import PrchModel

public extension Lists {
  /**
   Add interest in category

   Create a new interest or 'group name' for a specific category.
   */
  struct PostListsIdInterestCategoriesIdInterests: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}/interests"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(interestCategoryId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The unique ID for the interest category. */
    public let interestCategoryId: String

    public init(body: Interest1, listId: String, interestCategoryId: String) {
      self.body = body
      self.listId = listId
      self.interestCategoryId = interestCategoryId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Interest
    public typealias BodyType = Interest1

    public let body: Interest1
  }
}
