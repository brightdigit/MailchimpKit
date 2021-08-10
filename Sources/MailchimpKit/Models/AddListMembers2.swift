//
// AddListMembers2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */

public struct AddListMembers2: Codable {

    public enum StatusIfNew: String, Codable { 
        case subscribed = "subscribed"
        case unsubscribed = "unsubscribed"
        case cleaned = "cleaned"
        case pending = "pending"
        case transactional = "transactional"
    }
    public enum Status: String, Codable { 
        case subscribed = "subscribed"
        case unsubscribed = "unsubscribed"
        case cleaned = "cleaned"
        case pending = "pending"
        case transactional = "transactional"
    }
    /** Email address for a subscriber. This value is required only if the email address is not already present on the list. */
    public var emailAddress: String
    /** Subscriber&#x27;s status. This value is required only if the email address is not already present on the list. */
    public var statusIfNew: StatusIfNew
    /** Type of email this member asked to get (&#x27;html&#x27; or &#x27;text&#x27;). */
    public var emailType: String?
    /** Subscriber&#x27;s current status. */
    public var status: Status?
    /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;} */
    public var mergeFields: [String:String]?
    /** The key of this object&#x27;s properties is the ID of the interest in question. */
    public var interests: [String:Bool]?
    /** If set/detected, the [subscriber&#x27;s language](https://mailchimp.com/help/view-and-edit-contact-languages/). */
    public var language: String?
    /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
    public var vip: Bool?
    public var location: Location?
    /** The marketing permissions for the subscriber. */
    public var marketingPermissions: [MarketingPermission]?
    /** IP address the subscriber signed up from. */
    public var ipSignup: String?
    /** The date and time the subscriber signed up for the list in ISO 8601 format. */
    public var timestampSignup: Date?
    /** The IP address the subscriber used to confirm their opt-in status. */
    public var ipOpt: String?
    /** The date and time the subscriber confirmed their opt-in status in ISO 8601 format. */
    public var timestampOpt: Date?

    public init(emailAddress: String, statusIfNew: StatusIfNew, emailType: String? = nil, status: Status? = nil, mergeFields: [String:String]? = nil, interests: [String:Bool]? = nil, language: String? = nil, vip: Bool? = nil, location: Location? = nil, marketingPermissions: [MarketingPermission]? = nil, ipSignup: String? = nil, timestampSignup: Date? = nil, ipOpt: String? = nil, timestampOpt: Date? = nil) {
        self.emailAddress = emailAddress
        self.statusIfNew = statusIfNew
        self.emailType = emailType
        self.status = status
        self.mergeFields = mergeFields
        self.interests = interests
        self.language = language
        self.vip = vip
        self.location = location
        self.marketingPermissions = marketingPermissions
        self.ipSignup = ipSignup
        self.timestampSignup = timestampSignup
        self.ipOpt = ipOpt
        self.timestampOpt = timestampOpt
    }

    public enum CodingKeys: String, CodingKey { 
        case emailAddress = "email_address"
        case statusIfNew = "status_if_new"
        case emailType = "email_type"
        case status
        case mergeFields = "merge_fields"
        case interests
        case language
        case vip
        case location
        case marketingPermissions = "marketing_permissions"
        case ipSignup = "ip_signup"
        case timestampSignup = "timestamp_signup"
        case ipOpt = "ip_opt"
        case timestampOpt = "timestamp_opt"
    }

}
