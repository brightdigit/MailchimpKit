import Foundation
import PrchModel

/** Deprecated */
public struct SalesforceCRMTracking1: Codable, Equatable, Content {
  /** Create a campaign in a connected Salesforce account. */
  public let campaign: Bool?

  /** Update contact notes for a campaign based on subscriber email addresses. */
  public let notes: Bool?

  public init(campaign: Bool? = nil, notes: Bool? = nil) {
    self.campaign = campaign
    self.notes = notes
  }

  public enum CodingKeys: String, CodingKey {
    case campaign
    case notes
  }
}
