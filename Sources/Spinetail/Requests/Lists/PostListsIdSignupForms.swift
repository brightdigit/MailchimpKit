import Foundation
import PrchModel

public extension Lists {
  /**
   Customize signup form

   Customize a list's default signup form.
   */
  struct PostListsIdSignupForms: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/signup-forms"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public let listId: String

    public init(body: SignupForm1, listId: String) {
      self.body = body
      self.listId = listId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = SignupForm
    public typealias BodyType = SignupForm1

    public let body: SignupForm1
  }
}
