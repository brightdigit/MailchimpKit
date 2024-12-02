import Foundation
import PrchModel

public extension Lists {
  /**
   Add webhook

   Create a new webhook for a specific list.
   */
  struct PostListsIdWebhooks: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/webhooks"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public let listId: String

    public init(body: AddWebhook, listId: String) {
      self.body = body
      self.listId = listId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ListWebhooks
    public typealias BodyType = AddWebhook

    public let body: AddWebhook
  }
}
