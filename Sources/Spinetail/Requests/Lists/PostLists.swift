import Foundation
import PrchModel

public extension Lists {
  /**
   Add list

   Create a new list in your Mailchimp account.
   */
  struct PostLists: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: SubscriberList1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = SubscriberList
    public typealias BodyType = SubscriberList1

    public let body: SubscriberList1
  }
}
