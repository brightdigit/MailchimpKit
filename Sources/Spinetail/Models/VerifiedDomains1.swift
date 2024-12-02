import Foundation
import PrchModel

/** The verified domains currently on the account. */
public struct VerifiedDomainsModel1: Codable, Equatable, Content {
  /** The domains on the account */
  public let domains: [VerifiedDomainsModel]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(domains: [VerifiedDomainsModel]? = nil, totalItems: Int? = nil) {
    self.domains = domains
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case domains
    case totalItems = "total_items"
  }
}
