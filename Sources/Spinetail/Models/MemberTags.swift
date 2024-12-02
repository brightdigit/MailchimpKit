import Foundation
import PrchModel

/** A list of tags assigned to a list member. */
public struct MemberTags: Codable, Equatable, Content {
  /** A list of tags assigned to the list member. */
  public let tags: [MemberTag]

  /** When is_syncing is true, automations based on the tags in the request will not fire */
  public let isSyncing: Bool?

  public init(tags: [MemberTag], isSyncing: Bool? = nil) {
    self.tags = tags
    self.isSyncing = isSyncing
  }

  public enum CodingKeys: String, CodingKey {
    case tags
    case isSyncing = "is_syncing"
  }
}
