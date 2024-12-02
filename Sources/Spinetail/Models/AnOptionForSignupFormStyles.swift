import Foundation
import PrchModel

/** An option for Signup Form Styles. */
public struct AnOptionForSignupFormStyles: Codable, Equatable, Content {
  /** A string that identifies the property. */
  public let property: String?

  /** A string that identifies value of the property. */
  public let value: String?

  public init(property: String? = nil, value: String? = nil) {
    self.property = property
    self.value = value
  }

  public enum CodingKeys: String, CodingKey {
    case property
    case value
  }
}
