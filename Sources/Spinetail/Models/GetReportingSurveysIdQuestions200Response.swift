import Foundation
import PrchModel

public struct GetReportingSurveysIdQuestions200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of reports for each question on the survey. */
  public let questions: [SurveyQuestionReport]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, questions: [SurveyQuestionReport]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.questions = questions
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case questions
    case totalItems = "total_items"
  }
}
