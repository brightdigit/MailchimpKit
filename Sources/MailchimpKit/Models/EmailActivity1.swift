//
// EmailActivity1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A list of a member&#x27;s subscriber activity in a specific campaign, including opens, clicks, and bounces. */

public struct EmailActivity1: Codable {

    /** The unique id for the campaign. */
    public var campaignId: String?
    /** The unique id for the list. */
    public var listId: String?
    /** The status of the list used, namely if it&#x27;s deleted or disabled. */
    public var listIsActive: Bool?
    /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
    public var emailId: String?
    /** Email address for a subscriber. */
    public var emailAddress: String?
    /** An array of objects, each showing an interaction with the email. */
    public var activity: [MemberActivity]?
    /** A list of link types and descriptions for the API schema documents. */
    public var links: [ResourceLink]?

    public init(campaignId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, emailId: String? = nil, emailAddress: String? = nil, activity: [MemberActivity]? = nil, links: [ResourceLink]? = nil) {
        self.campaignId = campaignId
        self.listId = listId
        self.listIsActive = listIsActive
        self.emailId = emailId
        self.emailAddress = emailAddress
        self.activity = activity
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case campaignId = "campaign_id"
        case listId = "list_id"
        case listIsActive = "list_is_active"
        case emailId = "email_id"
        case emailAddress = "email_address"
        case activity
        case links = "_links"
    }

}
