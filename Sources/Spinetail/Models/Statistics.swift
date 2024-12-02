import Foundation
import PrchModel

/** Stats for the list. Many of these are cached for at least five minutes. */
public struct Statistics: Codable, Equatable, Content {
  /** The average number of subscriptions per month for the list (not returned if we haven't calculated it yet). */
  public let avgSubRate: Double?

  /** The average number of unsubscriptions per month for the list (not returned if we haven't calculated it yet). */
  public let avgUnsubRate: Double?

  /** The number of campaigns in any status that use this list. */
  public let campaignCount: Int?

  /** The date and time the last campaign was sent to this list in ISO 8601 format. This is updated when a campaign is sent to 10 or more recipients. */
  public let campaignLastSent: MailchimpOptionalDate

  /** The number of members cleaned from the list. */
  public let cleanedCount: Int?

  /** The number of members cleaned from the list since the last campaign was sent. */
  public let cleanedCountSinceSend: Int?

  /** The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven't calculated it yet). */
  public let clickRate: Double?

  /** The date and time of the last time someone subscribed to this list in ISO 8601 format. */
  public let lastSubDate: MailchimpOptionalDate

  /** The date and time of the last time someone unsubscribed from this list in ISO 8601 format. */
  public let lastUnsubDate: MailchimpOptionalDate

  /** The number of active members in the list. */
  public let memberCount: Int?

  /** The number of active members in the list since the last campaign was sent. */
  public let memberCountSinceSend: Int?

  /** The number of merge fields ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for this list (doesn't include EMAIL). */
  public let mergeFieldCount: Int?

  /** The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven't calculated it yet). */
  public let openRate: Double?

  /** The target number of subscriptions per month for the list to keep it growing (not returned if we haven't calculated it yet). */
  public let targetSubRate: Double?

  /** The number of contacts in the list, including subscribed, unsubscribed, pending, cleaned, deleted, transactional, and those that need to be reconfirmed. Requires include_total_contacts query parameter to be included. */
  public let totalContacts: Int?

  /** The number of members who have unsubscribed from the list. */
  public let unsubscribeCount: Int?

  /** The number of members who have unsubscribed since the last campaign was sent. */
  public let unsubscribeCountSinceSend: Int?

  public init(avgSubRate: Double? = nil, avgUnsubRate: Double? = nil, campaignCount: Int? = nil, campaignLastSent: MailchimpOptionalDate, cleanedCount: Int? = nil, cleanedCountSinceSend: Int? = nil, clickRate: Double? = nil, lastSubDate: MailchimpOptionalDate, lastUnsubDate: MailchimpOptionalDate, memberCount: Int? = nil, memberCountSinceSend: Int? = nil, mergeFieldCount: Int? = nil, openRate: Double? = nil, targetSubRate: Double? = nil, totalContacts: Int? = nil, unsubscribeCount: Int? = nil, unsubscribeCountSinceSend: Int? = nil) {
    self.avgSubRate = avgSubRate
    self.avgUnsubRate = avgUnsubRate
    self.campaignCount = campaignCount
    self.campaignLastSent = campaignLastSent
    self.cleanedCount = cleanedCount
    self.cleanedCountSinceSend = cleanedCountSinceSend
    self.clickRate = clickRate
    self.lastSubDate = lastSubDate
    self.lastUnsubDate = lastUnsubDate
    self.memberCount = memberCount
    self.memberCountSinceSend = memberCountSinceSend
    self.mergeFieldCount = mergeFieldCount
    self.openRate = openRate
    self.targetSubRate = targetSubRate
    self.totalContacts = totalContacts
    self.unsubscribeCount = unsubscribeCount
    self.unsubscribeCountSinceSend = unsubscribeCountSinceSend
  }

  public enum CodingKeys: String, CodingKey {
    case avgSubRate = "avg_sub_rate"
    case avgUnsubRate = "avg_unsub_rate"
    case campaignCount = "campaign_count"
    case campaignLastSent = "campaign_last_sent"
    case cleanedCount = "cleaned_count"
    case cleanedCountSinceSend = "cleaned_count_since_send"
    case clickRate = "click_rate"
    case lastSubDate = "last_sub_date"
    case lastUnsubDate = "last_unsub_date"
    case memberCount = "member_count"
    case memberCountSinceSend = "member_count_since_send"
    case mergeFieldCount = "merge_field_count"
    case openRate = "open_rate"
    case targetSubRate = "target_sub_rate"
    case totalContacts = "total_contacts"
    case unsubscribeCount = "unsubscribe_count"
    case unsubscribeCountSinceSend = "unsubscribe_count_since_send"
  }
}
