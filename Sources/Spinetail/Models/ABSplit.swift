import Foundation
import PrchModel

/** A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate CampaignsModel. */
public struct ABSplit: Codable, Equatable, Content {
  public let a: GroupA?

  public let b: GroupB?

  public init(a: GroupA? = nil, b: GroupB? = nil) {
    self.a = a
    self.b = b
  }

  public enum CodingKeys: String, CodingKey {
    case a
    case b
  }
}
