import Foundation
import PrchModel

/** Information about subscribers in a Customer Journey's audience. */
public struct SubscriberInCustomerJourneysAudience: Codable, Equatable, Content {
  /** The list member's email address. */
  public let emailAddress: String

  public init(emailAddress: String) {
    self.emailAddress = emailAddress
  }

  public enum CodingKeys: String, CodingKey {
    case emailAddress = "email_address"
  }
}
