import Foundation
import PrchModel

public extension Lists {
  /**
   Delete interest in category

   Delete interests or group names in a specific category.
   */
  struct DeleteListsIdInterestCategoriesIdInterestsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(interestCategoryId)").replacingOccurrences(of: "{" + "interest_id" + "}", with: "\(interestId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The unique ID for the interest category. */
    public let interestCategoryId: String

    /** The specific interest or 'group name'. */
    public let interestId: String

    public init(listId: String, interestCategoryId: String, interestId: String) {
      self.listId = listId
      self.interestCategoryId = interestCategoryId
      self.interestId = interestId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
