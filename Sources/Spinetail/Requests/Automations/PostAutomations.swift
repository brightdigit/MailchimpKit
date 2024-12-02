import Foundation
import PrchModel

public extension Automations {
  /**
   Add automation

   Create a new classic automation in your Mailchimp account.
   */
  struct PostAutomations: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: AutomationWorkflow1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = AutomationWorkflow
    public typealias BodyType = AutomationWorkflow1

    public let body: AutomationWorkflow1
  }
}
