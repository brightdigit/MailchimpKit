import Foundation
import PrchModel

/** Members to add/remove to/from a static segment */
public struct MembersToAddRemoveToFromaStaticSegment: Codable, Equatable, Content {
  /** An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. A maximum of 500 members can be sent. */
  public let membersToAdd: [String]?

  /** An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. A maximum of 500 members can be sent. */
  public let membersToRemove: [String]?

  public init(membersToAdd: [String]? = nil, membersToRemove: [String]? = nil) {
    self.membersToAdd = membersToAdd
    self.membersToRemove = membersToRemove
  }

  public enum CodingKeys: String, CodingKey {
    case membersToAdd = "members_to_add"
    case membersToRemove = "members_to_remove"
  }
}
