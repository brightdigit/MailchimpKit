import Foundation
import PrchModel

/** Deprecated */
public struct SalesforceCRMTracking: Codable, Equatable, Content {
  /** Create a campaign in a connected Salesforce account. */
  public let campaign: Bool?

  /** Update contact notes for a campaign based on a subscriber's email address. */
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
