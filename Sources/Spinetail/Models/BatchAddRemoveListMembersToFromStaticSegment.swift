import Foundation
import PrchModel

/** Batch add/remove List members to/from static segment */
public struct BatchAddRemoveListMembersToFromStaticSegment: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The total number of items matching the query, irrespective of pagination. */
  public let errorCount: Int?

  /** An array of objects, each representing an array of email addresses that could not be added to the segment or removed and an error message providing more details. */
  public let errors: [ErrorsInner1]?

  /** An array of objects, each representing a new member that was added to the static segment. */
  public let membersAdded: [ListMembers]?

  /** An array of objects, each representing an existing list member that got deleted from the static segment. */
  public let membersRemoved: [ListMembers]?

  /** The total number of items matching the query, irrespective of pagination. */
  public let totalAdded: Int?

  /** The total number of items matching the query, irrespective of pagination. */
  public let totalRemoved: Int?

  public init(links: [ResourceLink]? = nil, errorCount: Int? = nil, errors: [ErrorsInner1]? = nil, membersAdded: [ListMembers]? = nil, membersRemoved: [ListMembers]? = nil, totalAdded: Int? = nil, totalRemoved: Int? = nil) {
    self.links = links
    self.errorCount = errorCount
    self.errors = errors
    self.membersAdded = membersAdded
    self.membersRemoved = membersRemoved
    self.totalAdded = totalAdded
    self.totalRemoved = totalRemoved
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case errorCount = "error_count"
    case errors
    case membersAdded = "members_added"
    case membersRemoved = "members_removed"
    case totalAdded = "total_added"
    case totalRemoved = "total_removed"
  }
}
