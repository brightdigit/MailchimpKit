import Foundation
import PrchModel

public extension Reporting {
  /**
   List survey question reports

   Get reports for survey questions.
   */
  struct GetReportingSurveysIdQuestions: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reporting/surveys/{outreach_id}/questions"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "outreach_id" + "}", with: "\(outreachId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The outreach id. */
    public let outreachId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, outreachId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.outreachId = outreachId
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

    public typealias SuccessType = GetReportingSurveysIdQuestions200Response
    public typealias BodyType = Empty
  }
}
