import Foundation
import PrchModel

public extension Lists {
  /**
   Get lists info

   Get information about all lists in the account.
   */
  struct GetLists: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public var count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public var offset: Int?

    /** Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeDateCreated: String?

    /** Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceDateCreated: String?

    /** Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeCampaignLastSent: String?

    /** Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceCampaignLastSent: String?

    /** Restrict results to lists that include a specific subscriber's email address. */
    public var email: String?

    /** Returns files sorted by the specified field. */
    public var sortField: SortField?

    /** Determines the order direction for sorted results. */
    public var sortDir: SortDir?

    /** Restrict results to lists that contain an active, connected, undeleted ecommerce store. */
    public var hasEcommerceStore: Bool?

    /** Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. */
    public var includeTotalContacts: Bool?

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
      if let beforeDateCreated = self.beforeDateCreated {
        params["before_date_created"] = String(describing: beforeDateCreated)
      }
      if let sinceDateCreated = self.sinceDateCreated {
        params["since_date_created"] = String(describing: sinceDateCreated)
      }
      if let beforeCampaignLastSent = self.beforeCampaignLastSent {
        params["before_campaign_last_sent"] = String(describing: beforeCampaignLastSent)
      }
      if let sinceCampaignLastSent = self.sinceCampaignLastSent {
        params["since_campaign_last_sent"] = String(describing: sinceCampaignLastSent)
      }
      if let email = self.email {
        params["email"] = String(describing: email)
      }
      if let sortField = self.sortField {
        params["sort_field"] = String(describing: sortField)
      }
      if let sortDir = self.sortDir {
        params["sort_dir"] = String(describing: sortDir)
      }
      if let hasEcommerceStore = self.hasEcommerceStore {
        params["has_ecommerce_store"] = String(describing: hasEcommerceStore)
      }
      if let includeTotalContacts = self.includeTotalContacts {
        params["include_total_contacts"] = String(describing: includeTotalContacts)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** Returns files sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case dateCreated = "date_created"
    }

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

    public typealias SuccessType = SubscriberLists
    public typealias BodyType = Empty
  }
}