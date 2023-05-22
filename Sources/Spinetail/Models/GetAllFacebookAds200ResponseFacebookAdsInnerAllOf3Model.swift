import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf3Model: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public init(links: [ResourceLinkModel]? = nil) {
    self.links = links
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
  }
}
