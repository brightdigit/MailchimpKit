import Foundation
import PrchModel

/** Collection of Content for List Signup Forms. */
public struct CollectionOfContentForListSignupForms: Codable, Equatable, Content {
  /** The content section name. */
  public enum Section: String, Codable, Equatable, CaseIterable {
    case signupMessage = "signup_message"
    case unsubMessage = "unsub_message"
    case signupThankYouTitle = "signup_thank_you_title"
  }

  /** The content section name. */
  public let section: Section?

  /** The content section text. */
  public let value: String?

  public init(section: Section? = nil, value: String? = nil) {
    self.section = section
    self.value = value
  }

  public enum CodingKeys: String, CodingKey {
    case section
    case value
  }
}
