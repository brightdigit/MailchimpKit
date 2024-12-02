import Foundation
import PrchModel

/** List settings for the Automation. */
public struct List1: Codable, Equatable, Content {
  /** The id of the List. */
  public let listId: String?

  /** The id of the store. */
  public let storeId: String?

  public init(listId: String? = nil, storeId: String? = nil) {
    self.listId = listId
    self.storeId = storeId
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case storeId = "store_id"
  }
}
