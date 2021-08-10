//
// Location1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Subscriber location information. */

public struct Location1: Codable {

    /** The location latitude. */
    public var latitude: Decimal?
    /** The location longitude. */
    public var longitude: Decimal?
    /** The time difference in hours from GMT. */
    public var gmtoff: Int?
    /** The offset for timezones where daylight saving time is observed. */
    public var dstoff: Int?
    /** The unique code for the location country. */
    public var countryCode: String?
    /** The timezone for the location. */
    public var timezone: String?

    public init(latitude: Decimal? = nil, longitude: Decimal? = nil, gmtoff: Int? = nil, dstoff: Int? = nil, countryCode: String? = nil, timezone: String? = nil) {
        self.latitude = latitude
        self.longitude = longitude
        self.gmtoff = gmtoff
        self.dstoff = dstoff
        self.countryCode = countryCode
        self.timezone = timezone
    }

    public enum CodingKeys: String, CodingKey { 
        case latitude
        case longitude
        case gmtoff
        case dstoff
        case countryCode = "country_code"
        case timezone
    }

}
