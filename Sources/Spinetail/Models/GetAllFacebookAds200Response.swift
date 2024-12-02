import Foundation
import PrchModel

/** Contains an array of facebook ads. */
public struct GetAllFacebookAds200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  public let facebookAds: [GetAllFacebookAds200ResponseFacebookAdsInner]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, facebookAds: [GetAllFacebookAds200ResponseFacebookAdsInner]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.facebookAds = facebookAds
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case facebookAds = "facebook_ads"
    case totalItems = "total_items"
  }
}
