import Foundation
import PrchModel

public extension Lists {
  /**
   Get webhook info

   Get information about a specific webhook.
   */
  struct GetListsIdWebhooksId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/webhooks/{webhook_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "webhook_id" + "}", with: "\(webhookId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The webhook's id. */
    public let webhookId: String

    public init(listId: String, webhookId: String) {
      self.listId = listId
      self.webhookId = webhookId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ListWebhooks
    public typealias BodyType = Empty
  }
}
