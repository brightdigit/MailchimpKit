import Foundation
import PrchModel

public extension Lists {
  /**
   Get interest category info

   Get information about a specific interest category.
   */
  struct GetListsIdInterestCategoriesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(interestCategoryId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The unique ID for the interest category. */
    public let interestCategoryId: String

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    public init(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil) {
      self.listId = listId
      self.interestCategoryId = interestCategoryId
      self.fields = fields
      self.excludeFields = excludeFields
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = InterestCategory
    public typealias BodyType = Empty
  }
}
