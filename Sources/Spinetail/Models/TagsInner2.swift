import Foundation
import PrchModel

public struct TagsInner2: Codable, Equatable, Content {
  /** The date and time the tag was added to the list member in ISO 8601 format. */
  public let dateAdded: MailchimpOptionalDate

  /** The unique id for the tag. */
  public let id: Int?

  /** The name of the tag. */
  public let name: String?

  public init(dateAdded: MailchimpOptionalDate, id: Int? = nil, name: String? = nil) {
    self.dateAdded = dateAdded
    self.id = id
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case dateAdded = "date_added"
    case id
    case name
  }
}
