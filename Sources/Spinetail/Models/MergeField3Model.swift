import Foundation

import PrchModel
/** A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience. */
public struct MergeField3Model: Codable, Equatable, Content {
  /** The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field. */
  public enum Automations`Type`: String, Codable, Equatable, CaseIterable {
    case text
    case number
    case address
    case phone
    case date
    case url
    case imageurl
    case radio
    case dropdown
    case birthday
    case zip
  }

  /** An unchanging id for the merge field. */
  public var id: Int?

  /** The [label](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field. */
  public var label: String?

  /** The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field. */
  public var type: `Type`?

  public init(id: Int? = nil, label: String? = nil, type: Type? = nil) {
    self.id = id
    self.label = label
    self.type = type
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case id
    case label
    case type
  }
}
