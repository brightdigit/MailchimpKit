//
// AddWebhook1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Configure a webhook for the given list. */

public struct AddWebhook1: Codable {

    /** A valid URL for the Webhook. */
    public var url: String?
    public var events: Events1?
    public var sources: Sources?

    public init(url: String? = nil, events: Events1? = nil, sources: Sources? = nil) {
        self.url = url
        self.events = events
        self.sources = sources
    }


}
