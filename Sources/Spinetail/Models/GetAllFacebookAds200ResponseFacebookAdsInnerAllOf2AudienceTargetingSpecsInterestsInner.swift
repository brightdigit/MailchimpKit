import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsInterestsInner: Codable, Equatable, Content {
  public let name: String?

  public init(name: String? = nil) {
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case name
  }
}
