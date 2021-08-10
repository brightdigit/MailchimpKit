//
// SubscriberStats1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Open and click rates for this subscriber. */

public struct SubscriberStats1: Codable {

    /** A subscriber&#x27;s average open rate. */
    public var avgOpenRate: Decimal?
    /** A subscriber&#x27;s average clickthrough rate. */
    public var avgClickRate: Decimal?
    public var ecommerceData: EcommerceStats?

    public init(avgOpenRate: Decimal? = nil, avgClickRate: Decimal? = nil, ecommerceData: EcommerceStats? = nil) {
        self.avgOpenRate = avgOpenRate
        self.avgClickRate = avgClickRate
        self.ecommerceData = ecommerceData
    }

    public enum CodingKeys: String, CodingKey { 
        case avgOpenRate = "avg_open_rate"
        case avgClickRate = "avg_click_rate"
        case ecommerceData = "ecommerce_data"
    }

}
