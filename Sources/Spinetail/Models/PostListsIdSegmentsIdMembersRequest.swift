import Foundation
import PrchModel

public struct PostListsIdSegmentsIdMembersRequest: Codable, Equatable, Content {
  /** Email address for a subscriber. */
  public let emailAddress: String

  public init(emailAddress: String) {
    self.emailAddress = emailAddress
  }

  public enum CodingKeys: String, CodingKey {
    case emailAddress = "email_address"
  }
}
