import Foundation
import PrchModel

/** Batch update list members. */
public struct BatchUpdateListMembers: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The total number of items matching the query, irrespective of pagination. */
  public let errorCount: Int?

  /** An array of objects, each representing an email address that could not be added to the list or updated and an error message providing more details. */
  public let errors: [ErrorsInner]?

  /** An array of objects, each representing a new member that was added to the list. */
  public let newMembers: [ListMembers]?

  /** The total number of items matching the query, irrespective of pagination. */
  public let totalCreated: Int?

  /** The total number of items matching the query, irrespective of pagination. */
  public let totalUpdated: Int?

  /** An array of objects, each representing an existing list member whose subscription status was updated. */
  public let updatedMembers: [ListMembers]?

  public init(links: [ResourceLink]? = nil, errorCount: Int? = nil, errors: [ErrorsInner]? = nil, newMembers: [ListMembers]? = nil, totalCreated: Int? = nil, totalUpdated: Int? = nil, updatedMembers: [ListMembers]? = nil) {
    self.links = links
    self.errorCount = errorCount
    self.errors = errors
    self.newMembers = newMembers
    self.totalCreated = totalCreated
    self.totalUpdated = totalUpdated
    self.updatedMembers = updatedMembers
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case errorCount = "error_count"
    case errors
    case newMembers = "new_members"
    case totalCreated = "total_created"
    case totalUpdated = "total_updated"
    case updatedMembers = "updated_members"
  }
}
