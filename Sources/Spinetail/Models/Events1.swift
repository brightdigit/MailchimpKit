import Foundation
import PrchModel

/** The events that can trigger the webhook and whether they are enabled. */
public struct Events1: Codable, Equatable, Content {
  /** Whether the webhook is triggered when a campaign is sent or cancelled. */
  public let campaign: Bool?

  /** Whether the webhook is triggered when a subscriber's email address is cleaned from the list. */
  public let cleaned: Bool?

  /** Whether the webhook is triggered when a subscriber's profile is updated. */
  public let profile: Bool?

  /** Whether the webhook is triggered when a list subscriber is added. */
  public let subscribe: Bool?

  /** Whether the webhook is triggered when a list member unsubscribes. */
  public let unsubscribe: Bool?

  /** Whether the webhook is triggered when a subscriber's email address is changed. */
  public let upemail: Bool?

  public init(campaign: Bool? = nil, cleaned: Bool? = nil, profile: Bool? = nil, subscribe: Bool? = nil, unsubscribe: Bool? = nil, upemail: Bool? = nil) {
    self.campaign = campaign
    self.cleaned = cleaned
    self.profile = profile
    self.subscribe = subscribe
    self.unsubscribe = unsubscribe
    self.upemail = upemail
  }

  public enum CodingKeys: String, CodingKey {
    case campaign
    case cleaned
    case profile
    case subscribe
    case unsubscribe
    case upemail
  }
}
