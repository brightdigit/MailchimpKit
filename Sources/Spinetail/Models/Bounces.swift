import Foundation
import PrchModel

/** An object describing the bounce summary for the campaign. */
public struct Bounces: Codable, Equatable, Content {
  /** The total number of hard bounced email addresses. */
  public let hardBounces: Int?

  /** The total number of soft bounced email addresses. */
  public let softBounces: Int?

  /** The total number of addresses that were syntax-related bounces. */
  public let syntaxErrors: Int?

  public init(hardBounces: Int? = nil, softBounces: Int? = nil, syntaxErrors: Int? = nil) {
    self.hardBounces = hardBounces
    self.softBounces = softBounces
    self.syntaxErrors = syntaxErrors
  }

  public enum CodingKeys: String, CodingKey {
    case hardBounces = "hard_bounces"
    case softBounces = "soft_bounces"
    case syntaxErrors = "syntax_errors"
  }
}
