import Foundation

import PrchModel
/** Submit a response to the verification challenge and verify a domain for sending. */
public struct VerifyaDomainForSendingModel: Codable, Equatable, Content {
  /** The code that was sent to the email address provided when adding a new domain to verify. */
  public var code: String

  public init(code: String) {
    self.code = code
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case code
  }
}
