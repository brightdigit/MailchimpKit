//
// Carts.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A collection of a store&#x27;s carts. */

public struct Carts: Codable {

    /** The store id. */
    public var storeId: String?
    /** An array of objects, each representing a cart. */
    public var carts: [EcommerceCart3]?
    /** The total number of items matching the query regardless of pagination. */
    public var totalItems: Int?
    /** A list of link types and descriptions for the API schema documents. */
    public var links: [ResourceLink]?

    public init(storeId: String? = nil, carts: [EcommerceCart3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
        self.storeId = storeId
        self.carts = carts
        self.totalItems = totalItems
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case storeId = "store_id"
        case carts
        case totalItems = "total_items"
        case links = "_links"
    }

}
