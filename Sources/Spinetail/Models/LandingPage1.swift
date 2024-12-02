import Foundation
import PrchModel

/** A summary of an individual page's properties. */
public struct LandingPage1: Codable, Equatable, Content {
  /** The type of template the landing page has. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case signup
    case product
  }

  /** The description of this landing page. */
  public let description: String?

  /** The list's ID associated with this landing page. */
  public let listId: String?

  /** The name of this landing page. */
  public let name: String?

  /** The ID of the store associated with this landing page. */
  public let storeId: String?

  /** The template_id of this landing page. */
  public let templateId: Int?

  /** The title of this landing page seen in the browser's title bar. */
  public let title: String?

  public let tracking: TrackingSettings?

  /** The type of template the landing page has. */
  public let type: `Type`?

  public init(description: String? = nil, listId: String? = nil, name: String? = nil, storeId: String? = nil, templateId: Int? = nil, title: String? = nil, tracking: TrackingSettings? = nil, type: Type? = nil) {
    self.description = description
    self.listId = listId
    self.name = name
    self.storeId = storeId
    self.templateId = templateId
    self.title = title
    self.tracking = tracking
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case description
    case listId = "list_id"
    case name
    case storeId = "store_id"
    case templateId = "template_id"
    case title
    case tracking
    case type
  }
}
