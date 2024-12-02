import Foundation
import PrchModel

public extension Reporting {
  /**
   Get survey response

   Get a single survey response.
   */
  struct GetReportingSurveysIdResponsesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reporting/surveys/{outreach_id}/responses/{response_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "outreach_id" + "}", with: "\(outreachId)").replacingOccurrences(of: "{" + "response_id" + "}", with: "\(responseId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The outreach id. */
    public let outreachId: String

    /** The ID of the survey response. */
    public let responseId: String

    public init(outreachId: String, responseId: String) {
      self.outreachId = outreachId
      self.responseId = responseId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = SurveyResponse
    public typealias BodyType = Empty
  }
}
