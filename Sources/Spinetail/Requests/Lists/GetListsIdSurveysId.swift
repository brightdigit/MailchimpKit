import Foundation
import PrchModel

public extension Lists {
  /**
   Get survey

   Get details about a specific survey.
   */
  struct GetListsIdSurveysId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/surveys/{survey_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "survey_id" + "}", with: "\(surveyId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The ID of the survey. */
    public var surveyId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
