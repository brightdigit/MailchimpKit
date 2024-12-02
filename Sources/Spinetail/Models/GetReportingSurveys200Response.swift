import Foundation
import PrchModel

public struct GetReportingSurveys200Response: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The surveys that have reports available. */
  public let surveys: [SurveyReport]?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, surveys: [SurveyReport]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.surveys = surveys
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case surveys
    case totalItems = "total_items"
  }
}
