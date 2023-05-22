import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsLocationsModel: Codable, Equatable, Content {
  public var cities: [String]?

  public var countries: [String]?

  public var regions: [String]?

  public var zips: [String]?

  public init(cities: [String]? = nil, countries: [String]? = nil, regions: [String]? = nil, zips: [String]? = nil) {
    self.cities = cities
    self.countries = countries
    self.regions = regions
    self.zips = zips
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case cities
    case countries
    case regions
    case zips
  }
}
