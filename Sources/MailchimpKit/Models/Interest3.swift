//
// Interest3.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Assign subscribers to interests to group them together. Interests are referred to as &#x27;group names&#x27; in the Mailchimp application. */

public struct Interest3: Codable {

    /** The id for the interest category. */
    public var categoryId: String?
    /** The ID for the list that this interest belongs to. */
    public var listId: String?
    /** The ID for the interest. */
    public var _id: String?
    /** The name of the interest. This can be shown publicly on a subscription form. */
    public var name: String?
    /** The number of subscribers associated with this interest. */
    public var subscriberCount: String?
    /** The display order for interests. */
    public var displayOrder: Int?
    /** A list of link types and descriptions for the API schema documents. */
    public var links: [ResourceLink]?

    public init(categoryId: String? = nil, listId: String? = nil, _id: String? = nil, name: String? = nil, subscriberCount: String? = nil, displayOrder: Int? = nil, links: [ResourceLink]? = nil) {
        self.categoryId = categoryId
        self.listId = listId
        self._id = _id
        self.name = name
        self.subscriberCount = subscriberCount
        self.displayOrder = displayOrder
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case categoryId = "category_id"
        case listId = "list_id"
        case _id = "id"
        case name
        case subscriberCount = "subscriber_count"
        case displayOrder = "display_order"
        case links = "_links"
    }

}
