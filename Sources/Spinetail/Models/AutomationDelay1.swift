import Foundation
import PrchModel

/** The delay settings for an automation email. */
public struct AutomationDelay1: Codable, Equatable, Content {
  /** The action that triggers the delay of an automation emails. */
  public enum Action: String, Codable, Equatable, CaseIterable {
    case signup
    case ecommAbandonedBrowse = "ecomm_abandoned_browse"
    case ecommAbandonedCart = "ecomm_abandoned_cart"
  }

  /** Whether the delay settings describe before or after the delay action of an automation email. */
  public enum Direction: String, Codable, Equatable, CaseIterable {
    case after
  }

  /** The type of delay for an automation email. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case now
    case day
    case hour
    case week
  }

  /** The action that triggers the delay of an automation emails. */
  public let action: Action

  /** The delay amount for an automation email. */
  public let amount: Int?

  /** Whether the delay settings describe before or after the delay action of an automation email. */
  public let direction: Direction?

  /** The type of delay for an automation email. */
  public let type: `Type`?

  public init(action: Action, amount: Int? = nil, direction: Direction? = nil, type: Type? = nil) {
    self.action = action
    self.amount = amount
    self.direction = direction
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case action
    case amount
    case direction
    case type
  }
}
