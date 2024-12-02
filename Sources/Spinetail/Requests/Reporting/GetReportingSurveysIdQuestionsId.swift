import Foundation
import PrchModel

public extension Reporting {
  /**
   Get survey question report

   Get report for a survey question.
   */
  struct GetReportingSurveysIdQuestionsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reporting/surveys/{outreach_id}/questions/{question_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "outreach_id" + "}", with: "\(outreachId)").replacingOccurrences(of: "{" + "question_id" + "}", with: "\(questionId)")
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

    /** The ID of the survey question. */
    public let questionId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, outreachId: String, questionId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.outreachId = outreachId
      self.questionId = questionId
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

    public typealias SuccessType = SurveyQuestionReport
    public typealias BodyType = Empty
  }
}
