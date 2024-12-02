import Foundation
import PrchModel

/** The delay settings for an Automation email. */
public struct AutomationDelay: Codable, Equatable, Content {
  /** The action that triggers the delay of an Automation email. */
  public enum Action: String, Codable, Equatable, CaseIterable {
    case previousCampaignSent = "previous_campaign_sent"
    case previousCampaignOpened = "previous_campaign_opened"
    case previousCampaignNotOpened = "previous_campaign_not_opened"
    case previousCampaignClickedAny = "previous_campaign_clicked_any"
    case previousCampaignNotClickedAny = "previous_campaign_not_clicked_any"
    case previousCampaignSpecificClicked = "previous_campaign_specific_clicked"
    case ecommBoughtAny = "ecomm_bought_any"
    case ecommBoughtProduct = "ecomm_bought_product"
    case ecommBoughtCategory = "ecomm_bought_category"
    case ecommNotBoughtAny = "ecomm_not_bought_any"
    case ecommAbandonedCart = "ecomm_abandoned_cart"
    case campaignSent = "campaign_sent"
    case openedEmail = "opened_email"
    case notOpenedEmail = "not_opened_email"
    case clickedEmail = "clicked_email"
    case notClickedEmail = "not_clicked_email"
    case campaignSpecificClicked = "campaign_specific_clicked"
    case manual
    case signup
    case mergeChanged = "merge_changed"
    case groupAdd = "group_add"
    case groupRemove = "group_remove"
    case mandrillSent = "mandrill_sent"
    case mandrillOpened = "mandrill_opened"
    case mandrillClicked = "mandrill_clicked"
    case mandrillAny = "mandrill_any"
    case api
    case goal
    case annual
    case birthday
    case date
    case dateAdded = "date_added"
    case tagAdd = "tag_add"
  }

  /** Whether the delay settings describe before or after the delay action of an Automation email. */
  public enum Direction: String, Codable, Equatable, CaseIterable {
    case before
    case after
  }

  /** The type of delay for an Automation email. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case now
    case day
    case hour
    case week
  }

  /** The action that triggers the delay of an Automation email. */
  public let action: Action?

  /** The user-friendly description of the action that triggers an Automation email. */
  public let actionDescription: String?

  /** The delay amount for an Automation email. */
  public let amount: Int?

  /** Whether the delay settings describe before or after the delay action of an Automation email. */
  public let direction: Direction?

  /** The user-friendly description of the delay and trigger action settings for an Automation email. */
  public let fullDescription: String?

  /** The type of delay for an Automation email. */
  public let type: `Type`?

  public init(action: Action? = nil, actionDescription: String? = nil, amount: Int? = nil, direction: Direction? = nil, fullDescription: String? = nil, type: Type? = nil) {
    self.action = action
    self.actionDescription = actionDescription
    self.amount = amount
    self.direction = direction
    self.fullDescription = fullDescription
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case action
    case actionDescription = "action_description"
    case amount
    case direction
    case fullDescription = "full_description"
    case type
  }
}
