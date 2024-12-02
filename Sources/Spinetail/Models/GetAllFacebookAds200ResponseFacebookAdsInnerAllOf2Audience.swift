import Foundation
import PrchModel

/** Audience settings */
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Audience: Codable, Equatable, Content {
  /** List or Facebook based audience */
  public enum SourceType: String, Codable, Equatable, CaseIterable {
    case facebook
    case list
  }

  /** Type of the audience */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case customAudience = "Custom Audience"
    case lookalikeAudience = "Lookalike Audience"
    case interestBasedAudience = "Interest-based Audience"
  }

  public let emailSource: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceEmailSource?

  /** To include list contacts as part of audience */
  public let includeSourceInTarget: Bool?

  /** To find similar audience in given country */
  public let lookalikeCountryCode: String?

  /** List or Facebook based audience */
  public let sourceType: SourceType?

  public let targetingSpecs: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecs?

  /** Type of the audience */
  public let type: `Type`?

  public init(emailSource: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceEmailSource? = nil, includeSourceInTarget: Bool? = nil, lookalikeCountryCode: String? = nil, sourceType: SourceType? = nil, targetingSpecs: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecs? = nil, type: Type? = nil) {
    self.emailSource = emailSource
    self.includeSourceInTarget = includeSourceInTarget
    self.lookalikeCountryCode = lookalikeCountryCode
    self.sourceType = sourceType
    self.targetingSpecs = targetingSpecs
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case emailSource = "email_source"
    case includeSourceInTarget = "include_source_in_target"
    case lookalikeCountryCode = "lookalike_country_code"
    case sourceType = "source_type"
    case targetingSpecs = "targeting_specs"
    case type
  }
}
