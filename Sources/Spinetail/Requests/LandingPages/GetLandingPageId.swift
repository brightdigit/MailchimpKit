import Foundation
import PrchModel

public extension LandingPages {
  /**
   Get landing page info

   Get information about a specific page.
   */
  struct GetLandingPageId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/landing-pages/{page_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "page_id" + "}", with: "\(pageId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique id for the page. */
    public let pageId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, pageId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.pageId = pageId
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

    public typealias SuccessType = LandingPage
    public typealias BodyType = Empty
  }
}
