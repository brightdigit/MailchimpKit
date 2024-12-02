import Foundation
import PrchModel

public extension Surveys {
  /**
   Publish a Survey

   Publish a survey that is in draft, unpublished, or has been previously published and edited.
   */
  struct PostListsIdSurveysIdActionsPublish: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/surveys/{survey_id}/actions/publish"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "survey_id" + "}", with: "\(surveyId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The ID of the survey. */
    public let surveyId: String

    public init(listId: String, surveyId: String) {
      self.listId = listId
      self.surveyId = surveyId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
