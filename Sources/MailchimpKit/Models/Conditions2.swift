//
// Conditions2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The conditions of the segment. Static segments (tags) and fuzzy segments don&#x27;t have conditions. */

public struct Conditions2: Codable {

    public enum Match: String, Codable { 
        case any = "any"
        case all = "all"
    }
    /** Match type. */
    public var match: Match?
    /** Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas). */
    public var conditions: [Any]?

    public init(match: Match? = nil, conditions: [Any]? = nil) {
        self.match = match
        self.conditions = conditions
    }


}
