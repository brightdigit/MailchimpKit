import Foundation
import PrchModel

public struct GetReportingSurveysIdResponses200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of responses to a survey. */
  public let responses: [SurveyRespondents]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, responses: [SurveyRespondents]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.responses = responses
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case responses
    case totalItems = "total_items"
  }
}
