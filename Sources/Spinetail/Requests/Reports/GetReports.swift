import Foundation
import PrchModel

public extension AutomationsAutomationsReports {
  /**
   List campaign reports

   Get campaign reports.
   */
  struct GetReports: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reports"

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

    /** The campaign type. */
    public var type: `Type`?

    /** Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeSendTime: DateTime?

    /** Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceSendTime: DateTime?

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
      if let type = self.type {
        params["type"] = String(describing: type)
      }
      if let beforeSendTime = self.beforeSendTime {
        params["before_send_time"] = String(describing: beforeSendTime)
      }
      if let sinceSendTime = self.sinceSendTime {
        params["since_send_time"] = String(describing: sinceSendTime)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getReports", tag: "reports", method: "GET", path: "/reports", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    /** The campaign type. */
    public enum Automations`Type`: String, Codable, Equatable, CaseIterable {
      case regular
      case plaintext
      case absplit
      case rss
      case variate
    }

    public typealias SuccessType = CampaignReports1Model
    public typealias BodyType = Empty
  }
}
