import Foundation
import PrchModel

public struct ResultsInner: Codable, Equatable, Content {
  public let campaign: Campaign?

  public let snippet: String?

  public init(campaign: Campaign? = nil, snippet: String? = nil) {
    self.campaign = campaign
    self.snippet = snippet
  }

  public enum CodingKeys: String, CodingKey {
    case campaign
    case snippet
  }
}
