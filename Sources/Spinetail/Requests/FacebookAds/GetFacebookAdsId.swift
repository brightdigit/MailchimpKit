import Foundation
import PrchModel

public extension FacebookAds {
  /**
   Get facebook ad info

   Get details of a Facebook ad.
   */
  struct GetFacebookAdsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/facebook-ads/{outreach_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "outreach_id" + "}", with: "\(outreachId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** The outreach id. */
    public let outreachId: String

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    public init(fields: [String]? = nil, outreachId: String, excludeFields: [String]? = nil) {
      self.fields = fields
      self.outreachId = outreachId
      self.excludeFields = excludeFields
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = GetFacebookAdsId200Response
    public typealias BodyType = Empty
  }
}
