import Foundation
import PrchModel

public extension Lists {
  /**
   Update interest in category

   Update interests or 'group names' for a specific category.
   */
  struct PatchListsIdInterestCategoriesIdInterestsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(interestCategoryId)").replacingOccurrences(of: "{" + "interest_id" + "}", with: "\(interestId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The unique ID for the interest category. */
    public let interestCategoryId: String

    /** The specific interest or 'group name'. */
    public let interestId: String

    public init(body: Interest1, listId: String, interestCategoryId: String, interestId: String) {
      self.body = body
      self.listId = listId
      self.interestCategoryId = interestCategoryId
      self.interestId = interestId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Interest
    public typealias BodyType = Interest1

    public let body: Interest1
  }
}
