import Foundation
import PrchModel

public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryExtendedAt: Codable, Equatable, Content {
  public let datetime: String?

  public let timezone: String?

  public init(datetime: String? = nil, timezone: String? = nil) {
    self.datetime = datetime
    self.timezone = timezone
  }

  public enum CodingKeys: String, CodingKey {
    case datetime
    case timezone
  }
}
