import Foundation
import PrchModel

/** List signup form. */
public struct SignupForm1: Codable, Equatable, Content {
  /** The signup form body content. */
  public let contents: [CollectionOfContentForListSignupForms]?

  public let header: SignupFormHeaderOptions?

  /** An array of objects, each representing an element style for the signup form. */
  public let styles: [CollectionOfElementStyleForListSignupForms]?

  public init(contents: [CollectionOfContentForListSignupForms]? = nil, header: SignupFormHeaderOptions? = nil, styles: [CollectionOfElementStyleForListSignupForms]? = nil) {
    self.contents = contents
    self.header = header
    self.styles = styles
  }

  public enum CodingKeys: String, CodingKey {
    case contents
    case header
    case styles
  }
}
