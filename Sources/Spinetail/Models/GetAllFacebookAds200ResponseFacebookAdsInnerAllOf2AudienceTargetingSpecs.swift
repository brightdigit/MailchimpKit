import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecs: Codable, Equatable, Content {
  public let gender: Int?

  public let interests: [GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsInterestsInner]?

  public let locations: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsLocations?

  public let maxAge: Int?

  public let minAge: Int?

  public init(gender: Int? = nil, interests: [GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsInterestsInner]? = nil, locations: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsLocations? = nil, maxAge: Int? = nil, minAge: Int? = nil) {
    self.gender = gender
    self.interests = interests
    self.locations = locations
    self.maxAge = maxAge
    self.minAge = minAge
  }

  public enum CodingKeys: String, CodingKey {
    case gender
    case interests
    case locations
    case maxAge = "max_age"
    case minAge = "min_age"
  }
}
