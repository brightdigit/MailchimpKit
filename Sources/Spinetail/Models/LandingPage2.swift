import Foundation
import PrchModel

/** A summary of an individual page's properties. */
public struct LandingPage2: Codable, Equatable, Content {
  /** The description of this landing page. */
  public let description: String?

  /** The list's ID associated with this landing page. */
  public let listId: String?

  /** The name of this landing page. */
  public let name: String?

  /** The ID of the store associated with this landing page. */
  public let storeId: String?

  /** The title of this landing page seen in the browser's title bar. */
  public let title: String?

  public let tracking: TrackingSettings?

  public init(description: String? = nil, listId: String? = nil, name: String? = nil, storeId: String? = nil, title: String? = nil, tracking: TrackingSettings? = nil) {
    self.description = description
    self.listId = listId
    self.name = name
    self.storeId = storeId
    self.title = title
    self.tracking = tracking
  }

  public enum CodingKeys: String, CodingKey {
    case description
    case listId = "list_id"
    case name
    case storeId = "store_id"
    case title
    case tracking
  }
}
