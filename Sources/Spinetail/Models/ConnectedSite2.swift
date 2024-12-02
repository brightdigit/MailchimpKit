import Foundation
import PrchModel

/** The Connected Site associated with the store. */
public struct ConnectedSite2: Codable, Equatable, Content {
  /** The unique identifier for the connected site. */
  public let siteForeignId: String?

  public let siteScript: Script1?

  public init(siteForeignId: String? = nil, siteScript: Script1? = nil) {
    self.siteForeignId = siteForeignId
    self.siteScript = siteScript
  }

  public enum CodingKeys: String, CodingKey {
    case siteForeignId = "site_foreign_id"
    case siteScript = "site_script"
  }
}
