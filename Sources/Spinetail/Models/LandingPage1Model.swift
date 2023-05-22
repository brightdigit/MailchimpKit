import Foundation

import PrchModel
/** A summary of an individual page's properties. */
public struct LandingPage1Model: Codable, Equatable, Content {
  /** The type of template the landing page has. */
  public enum Automations`Type`: String, Codable, Equatable, CaseIterable {
    case signup
    case product
  }

  /** The description of this landing page. */
  public var description: String?

  /** The list's ID associated with this landing page. */
  public var listId: String?

  /** The name of this landing page. */
  public var name: String?

  /** The ID of the store associated with this landing page. */
  public var storeId: String?

  /** The template_id of this landing page. */
  public var templateId: Int?

  /** The title of this landing page seen in the browser's title bar. */
  public var title: String?

  public var tracking: TrackingSettingsModel?

  /** The type of template the landing page has. */
  public var type: `Type`?

  public init(description: String? = nil, listId: String? = nil, name: String? = nil, storeId: String? = nil, templateId: Int? = nil, title: String? = nil, tracking: TrackingSettingsModel? = nil, type: Type? = nil) {
    self.description = description
    self.listId = listId
    self.name = name
    self.storeId = storeId
    self.templateId = templateId
    self.title = title
    self.tracking = tracking
    self.type = type
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
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
