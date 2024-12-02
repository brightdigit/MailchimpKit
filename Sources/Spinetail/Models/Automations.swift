import Foundation
import PrchModel

/** Details for the automations attached to this store. */
public struct AutomationsModel: Codable, Equatable, Content {
  public let abandonedBrowse: AbandonedBrowseAutomation?

  public let abandonedCart: AbandonedCartAutomation?

  public init(abandonedBrowse: AbandonedBrowseAutomation? = nil, abandonedCart: AbandonedCartAutomation? = nil) {
    self.abandonedBrowse = abandonedBrowse
    self.abandonedCart = abandonedCart
  }

  public enum CodingKeys: String, CodingKey {
    case abandonedBrowse = "abandoned_browse"
    case abandonedCart = "abandoned_cart"
  }
}
