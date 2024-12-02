import Foundation
import PrchModel

public extension Lists {
  /**
   List members info

   Get information about members in a specific Mailchimp list.
   */
  struct GetListsIdMembers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public let count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public let offset: Int?

    /** The unique ID for the list. */
    public let listId: String

    /** The email type. */
    public let emailType: String?

    /** The subscriber's status. */
    public let status: Status?

    /** Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let sinceTimestampOpt: String?

    /** Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let beforeTimestampOpt: String?

    /** Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let sinceLastChanged: String?

    /** Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let beforeLastChanged: String?

    /** A unique identifier for the email address across all Mailchimp lists. */
    public let uniqueEmailId: String?

    /** A filter to return only the list's VIP members. Passing `true` will restrict results to VIP list members, passing `false` will return all list members. */
    public let vipOnly: Bool?

    /** The unique id for the interest category. */
    public let interestCategoryId: String?

    /** Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories. */
    public let interestIds: String?

    /** Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. "any" will match a member with any of the interest supplied, "all" will only match members with every interest supplied, and "none" will match members without any of the interest supplied. */
    public let interestMatch: InterestMatch?

    /** Returns files sorted by the specified field. */
    public let sortField: SortField?

    /** Determines the order direction for sorted results. */
    public let sortDir: SortDir?

    /** Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter. */
    public let sinceLastCampaign: Bool?

    /** Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error. */
    public let unsubscribedSince: String?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, listId: String, emailType: String? = nil, status: Status? = nil, sinceTimestampOpt: String? = nil, beforeTimestampOpt: String? = nil, sinceLastChanged: String? = nil, beforeLastChanged: String? = nil, uniqueEmailId: String? = nil, vipOnly: Bool? = nil, interestCategoryId: String? = nil, interestIds: String? = nil, interestMatch: InterestMatch? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil, sinceLastCampaign: Bool? = nil, unsubscribedSince: String? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.listId = listId
      self.emailType = emailType
      self.status = status
      self.sinceTimestampOpt = sinceTimestampOpt
      self.beforeTimestampOpt = beforeTimestampOpt
      self.sinceLastChanged = sinceLastChanged
      self.beforeLastChanged = beforeLastChanged
      self.uniqueEmailId = uniqueEmailId
      self.vipOnly = vipOnly
      self.interestCategoryId = interestCategoryId
      self.interestIds = interestIds
      self.interestMatch = interestMatch
      self.sortField = sortField
      self.sortDir = sortDir
      self.sinceLastCampaign = sinceLastCampaign
      self.unsubscribedSince = unsubscribedSince
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let count = self.count {
        params["count"] = String(describing: count)
      }
      if let offset = self.offset {
        params["offset"] = String(describing: offset)
      }
      if let emailType = self.emailType {
        params["email_type"] = String(describing: emailType)
      }
      if let status = self.status {
        params["status"] = String(describing: status)
      }
      if let sinceTimestampOpt = self.sinceTimestampOpt {
        params["since_timestamp_opt"] = String(describing: sinceTimestampOpt)
      }
      if let beforeTimestampOpt = self.beforeTimestampOpt {
        params["before_timestamp_opt"] = String(describing: beforeTimestampOpt)
      }
      if let sinceLastChanged = self.sinceLastChanged {
        params["since_last_changed"] = String(describing: sinceLastChanged)
      }
      if let beforeLastChanged = self.beforeLastChanged {
        params["before_last_changed"] = String(describing: beforeLastChanged)
      }
      if let uniqueEmailId = self.uniqueEmailId {
        params["unique_email_id"] = String(describing: uniqueEmailId)
      }
      if let vipOnly = self.vipOnly {
        params["vip_only"] = String(describing: vipOnly)
      }
      if let interestCategoryId = self.interestCategoryId {
        params["interest_category_id"] = String(describing: interestCategoryId)
      }
      if let interestIds = self.interestIds {
        params["interest_ids"] = String(describing: interestIds)
      }
      if let interestMatch = self.interestMatch {
        params["interest_match"] = String(describing: interestMatch)
      }
      if let sortField = self.sortField {
        params["sort_field"] = String(describing: sortField)
      }
      if let sortDir = self.sortDir {
        params["sort_dir"] = String(describing: sortDir)
      }
      if let sinceLastCampaign = self.sinceLastCampaign {
        params["since_last_campaign"] = String(describing: sinceLastCampaign)
      }
      if let unsubscribedSince = self.unsubscribedSince {
        params["unsubscribed_since"] = String(describing: unsubscribedSince)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** The subscriber's status. */
    public enum Status: String, Codable, Equatable, CaseIterable {
      case subscribed
      case unsubscribed
      case cleaned
      case pending
      case transactional
      case archived
    }

    /** Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. "any" will match a member with any of the interest supplied, "all" will only match members with every interest supplied, and "none" will match members without any of the interest supplied. */
    public enum InterestMatch: String, Codable, Equatable, CaseIterable {
      case any
      case all
      case none
    }

    /** Returns files sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case timestampOpt = "timestamp_opt"
      case timestampSignup = "timestamp_signup"
      case lastChanged = "last_changed"
    }

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

    public typealias SuccessType = ListMembers2
    public typealias BodyType = Empty
  }
}
