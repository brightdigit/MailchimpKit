//
// CampaignDefaults1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list. */

public struct CampaignDefaults1: Codable {

    /** The default from name for campaigns sent to this list. */
    public var fromName: String?
    /** The default from email for campaigns sent to this list. */
    public var fromEmail: String?
    /** The default subject line for campaigns sent to this list. */
    public var subject: String?
    /** The default language for this lists&#x27;s forms. */
    public var language: String?

    public init(fromName: String? = nil, fromEmail: String? = nil, subject: String? = nil, language: String? = nil) {
        self.fromName = fromName
        self.fromEmail = fromEmail
        self.subject = subject
        self.language = language
    }

    public enum CodingKeys: String, CodingKey { 
        case fromName = "from_name"
        case fromEmail = "from_email"
        case subject
        case language
    }

}
