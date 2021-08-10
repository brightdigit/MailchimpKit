//
// Statistics.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Stats for the list. Many of these are cached for at least five minutes. */

public struct Statistics: Codable {

    /** The number of active members in the list. */
    public var memberCount: Int?
    /** The number of contacts in the list, including subscribed, unsubscribed, pending, cleaned, deleted, transactional, and those that need to be reconfirmed. Requires include_total_contacts query parameter to be included. */
    public var totalContacts: Int?
    /** The number of members who have unsubscribed from the list. */
    public var unsubscribeCount: Int?
    /** The number of members cleaned from the list. */
    public var cleanedCount: Int?
    /** The number of active members in the list since the last campaign was sent. */
    public var memberCountSinceSend: Int?
    /** The number of members who have unsubscribed since the last campaign was sent. */
    public var unsubscribeCountSinceSend: Int?
    /** The number of members cleaned from the list since the last campaign was sent. */
    public var cleanedCountSinceSend: Int?
    /** The number of campaigns in any status that use this list. */
    public var campaignCount: Int?
    /** The date and time the last campaign was sent to this list in ISO 8601 format. This is updated when a campaign is sent to 10 or more recipients. */
    public var campaignLastSent: Date?
    /** The number of merge fields ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for this list (doesn&#x27;t include EMAIL). */
    public var mergeFieldCount: Int?
    /** The average number of subscriptions per month for the list (not returned if we haven&#x27;t calculated it yet). */
    public var avgSubRate: Decimal?
    /** The average number of unsubscriptions per month for the list (not returned if we haven&#x27;t calculated it yet). */
    public var avgUnsubRate: Decimal?
    /** The target number of subscriptions per month for the list to keep it growing (not returned if we haven&#x27;t calculated it yet). */
    public var targetSubRate: Decimal?
    /** The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven&#x27;t calculated it yet). */
    public var openRate: Decimal?
    /** The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven&#x27;t calculated it yet). */
    public var clickRate: Decimal?
    /** The date and time of the last time someone subscribed to this list in ISO 8601 format. */
    public var lastSubDate: Date?
    /** The date and time of the last time someone unsubscribed from this list in ISO 8601 format. */
    public var lastUnsubDate: Date?

    public init(memberCount: Int? = nil, totalContacts: Int? = nil, unsubscribeCount: Int? = nil, cleanedCount: Int? = nil, memberCountSinceSend: Int? = nil, unsubscribeCountSinceSend: Int? = nil, cleanedCountSinceSend: Int? = nil, campaignCount: Int? = nil, campaignLastSent: Date? = nil, mergeFieldCount: Int? = nil, avgSubRate: Decimal? = nil, avgUnsubRate: Decimal? = nil, targetSubRate: Decimal? = nil, openRate: Decimal? = nil, clickRate: Decimal? = nil, lastSubDate: Date? = nil, lastUnsubDate: Date? = nil) {
        self.memberCount = memberCount
        self.totalContacts = totalContacts
        self.unsubscribeCount = unsubscribeCount
        self.cleanedCount = cleanedCount
        self.memberCountSinceSend = memberCountSinceSend
        self.unsubscribeCountSinceSend = unsubscribeCountSinceSend
        self.cleanedCountSinceSend = cleanedCountSinceSend
        self.campaignCount = campaignCount
        self.campaignLastSent = campaignLastSent
        self.mergeFieldCount = mergeFieldCount
        self.avgSubRate = avgSubRate
        self.avgUnsubRate = avgUnsubRate
        self.targetSubRate = targetSubRate
        self.openRate = openRate
        self.clickRate = clickRate
        self.lastSubDate = lastSubDate
        self.lastUnsubDate = lastUnsubDate
    }

    public enum CodingKeys: String, CodingKey { 
        case memberCount = "member_count"
        case totalContacts = "total_contacts"
        case unsubscribeCount = "unsubscribe_count"
        case cleanedCount = "cleaned_count"
        case memberCountSinceSend = "member_count_since_send"
        case unsubscribeCountSinceSend = "unsubscribe_count_since_send"
        case cleanedCountSinceSend = "cleaned_count_since_send"
        case campaignCount = "campaign_count"
        case campaignLastSent = "campaign_last_sent"
        case mergeFieldCount = "merge_field_count"
        case avgSubRate = "avg_sub_rate"
        case avgUnsubRate = "avg_unsub_rate"
        case targetSubRate = "target_sub_rate"
        case openRate = "open_rate"
        case clickRate = "click_rate"
        case lastSubDate = "last_sub_date"
        case lastUnsubDate = "last_unsub_date"
    }

}
