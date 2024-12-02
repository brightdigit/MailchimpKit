import Foundation
import PrchModel

/** Channel settings */
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel: Codable, Equatable, Content {
  /** Is this for facebook audience */
  public let fbPlacementAudience: Bool?

  /** Is this for facebook feed */
  public let fbPlacementFeed: Bool?

  /** Is this for instagram feed */
  public let igPlacementFeed: Bool?

  public init(fbPlacementAudience: Bool? = nil, fbPlacementFeed: Bool? = nil, igPlacementFeed: Bool? = nil) {
    self.fbPlacementAudience = fbPlacementAudience
    self.fbPlacementFeed = fbPlacementFeed
    self.igPlacementFeed = igPlacementFeed
  }

  public enum CodingKeys: String, CodingKey {
    case fbPlacementAudience = "fb_placement_audience"
    case fbPlacementFeed = "fb_placement_feed"
    case igPlacementFeed = "ig_placement_feed"
  }
}
