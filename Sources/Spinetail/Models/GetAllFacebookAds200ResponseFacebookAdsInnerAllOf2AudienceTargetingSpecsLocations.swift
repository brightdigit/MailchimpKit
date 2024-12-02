import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsLocations: Codable, Equatable, Content {
  public let cities: [String]?

  public let countries: [String]?

  public let regions: [String]?

  public let zips: [String]?

  public init(cities: [String]? = nil, countries: [String]? = nil, regions: [String]? = nil, zips: [String]? = nil) {
    self.cities = cities
    self.countries = countries
    self.regions = regions
    self.zips = zips
  }

  public enum CodingKeys: String, CodingKey {
    case cities
    case countries
    case regions
    case zips
  }
}
