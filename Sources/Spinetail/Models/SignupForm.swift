import Foundation
import PrchModel

/** List signup form. */
public struct SignupForm: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The signup form body content. */
  public let contents: [CollectionOfContentForListSignupForms]?

  public let header: SignupFormHeaderOptions?

  /** The signup form's list id. */
  public let listId: String?

  /** Signup form URL. */
  public let signupFormURL: String?

  /** An array of objects, each representing an element style for the signup form. */
  public let styles: [CollectionOfElementStyleForListSignupForms]?

  public init(links: [ResourceLink]? = nil, contents: [CollectionOfContentForListSignupForms]? = nil, header: SignupFormHeaderOptions? = nil, listId: String? = nil, signupFormURL: String? = nil, styles: [CollectionOfElementStyleForListSignupForms]? = nil) {
    self.links = links
    self.contents = contents
    self.header = header
    self.listId = listId
    self.signupFormURL = signupFormURL
    self.styles = styles
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case contents
    case header
    case listId = "list_id"
    case signupFormURL = "signup_form_url"
    case styles
  }
}
