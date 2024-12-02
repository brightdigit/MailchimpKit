import Foundation
import PrchModel

public extension Lists {
  /**
   Delete interest category

   Delete a specific interest category.
   */
  struct DeleteListsIdInterestCategoriesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(interestCategoryId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The unique ID for the interest category. */
    public let interestCategoryId: String

    public init(listId: String, interestCategoryId: String) {
      self.listId = listId
      self.interestCategoryId = interestCategoryId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
