import Foundation
import PrchModel

/** The verified domains currently on the account. */
public struct VerifiedDomainsModel2: Codable, Equatable, Content {
  /** The e-mail address at the domain you want to verify. This will receive a two-factor challenge to be used in the verify action. */
  public let verificationEmail: String

  public init(verificationEmail: String) {
    self.verificationEmail = verificationEmail
  }

  public enum CodingKeys: String, CodingKey {
    case verificationEmail = "verification_email"
  }
}
