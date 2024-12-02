import Foundation
import PrchModel

public extension CustomerJourneys {
  /**
   Customer Journeys API trigger for a contact

   A step trigger in a Customer Journey. To use it, create a starting point or step from the Customer Journey builder in the app using the Customer Journeys API condition. We’ll provide a url during the process that includes the {journey_id} and {step_id}. You’ll then be able to use this endpoint to trigger the condition for the posted contact.
   */
  struct PostCustomerJourneysJourneysIdStepsIdActionsTrigger: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "journey_id" + "}", with: "\(journeyId)").replacingOccurrences(of: "{" + "step_id" + "}", with: "\(stepId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The id for the Journey. */
    public let journeyId: Int

    /** The id for the Step. */
    public let stepId: Int

    public init(body: SubscriberInCustomerJourneysAudience, journeyId: Int, stepId: Int) {
      self.body = body
      self.journeyId = journeyId
      self.stepId = stepId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = [String: String]
    public typealias BodyType = SubscriberInCustomerJourneysAudience

    public let body: SubscriberInCustomerJourneysAudience
  }
}
