import Foundation
import PrchModel

/** The verified domains currently on the account. */
public struct VerifiedDomainsModel: Codable, Equatable, Content {
  /** Whether domain authentication is enabled for this domain. */
  public let authenticated: Bool?

  /** The name of this domain. */
  public let domain: String?

  /** The e-mail address receiving the two-factor challenge for this domain. */
  public let verificationEmail: String?

  /** The date/time that the two-factor challenge was sent to the verification email. */
  public let verificationSent: MailchimpOptionalDate

  /** Whether the domain has been verified for sending. */
  public let verified: Bool?

  public init(authenticated: Bool? = nil, domain: String? = nil, verificationEmail: String? = nil, verificationSent: MailchimpOptionalDate, verified: Bool? = nil) {
    self.authenticated = authenticated
    self.domain = domain
    self.verificationEmail = verificationEmail
    self.verificationSent = verificationSent
    self.verified = verified
  }

  public enum CodingKeys: String, CodingKey {
    case authenticated
    case domain
    case verificationEmail = "verification_email"
    case verificationSent = "verification_sent"
    case verified
  }
}
