import Foundation
import PrchModel

/** General stats about different groups of an A/B Split campaign. Does not return information about Multivariate CampaignsModel. */
public struct ABSplitStats: Codable, Equatable, Content {
  public let a: CampaignA?

  public let b: CampaignB?

  public init(a: CampaignA? = nil, b: CampaignB? = nil) {
    self.a = a
    self.b = b
  }

  public enum CodingKeys: String, CodingKey {
    case a
    case b
  }
}
