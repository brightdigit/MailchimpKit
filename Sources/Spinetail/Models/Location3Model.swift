import Foundation

import PrchModel
/** An individual click location. */
public struct Location3Model: Codable, Equatable, Content {
  /** The two-digit country code for a recorded click. */
  public var country: String?

  /** If available, a specific region where the click was recorded. */
  public var region: String?

  public init(country: String? = nil, region: String? = nil) {
    self.country = country
    self.region = region
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case country
    case region
  }
}
