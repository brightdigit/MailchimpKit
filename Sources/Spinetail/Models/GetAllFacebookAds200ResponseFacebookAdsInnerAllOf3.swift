import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf3: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public init(links: [ResourceLink]? = nil) {
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
  }
}
