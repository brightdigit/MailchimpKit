import Foundation
import PrchModel

public struct GetReportingSurveysIdQuestionsIdAnswers200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of answers for a question on the survey. */
  public let answers: [SurveyQuestionAnswer]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, answers: [SurveyQuestionAnswer]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.answers = answers
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case answers
    case totalItems = "total_items"
  }
}
