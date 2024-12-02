import Foundation
import PrchModel

public struct ListLocation: Codable, Equatable, Content {
  /** The ISO 3166 2 digit country code. */
  public let cc: String?

  /** The name of the country. */
  public let country: String?

  /** The percent of subscribers in the country. */
  public let percent: Double?

  /** The total number of subscribers in the country. */
  public let total: Int?

  public init(cc: String? = nil, country: String? = nil, percent: Double? = nil, total: Int? = nil) {
    self.cc = cc
    self.country = country
    self.percent = percent
    self.total = total
  }

  public enum CodingKeys: String, CodingKey {
    case cc
    case country
    case percent
    case total
  }
}
