import Foundation
import PrchModel

/** List Signup Forms. */
public struct ListSignupForms: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The list id. */
  public let listId: String?

  /** List signup form. */
  public let signupForms: [SignupForm]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, listId: String? = nil, signupForms: [SignupForm]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.signupForms = signupForms
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case signupForms = "signup_forms"
    case totalItems = "total_items"
  }
}
