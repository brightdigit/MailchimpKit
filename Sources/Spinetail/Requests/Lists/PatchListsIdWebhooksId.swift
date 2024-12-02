import Foundation
import PrchModel

public extension Lists {
  /**
   Update webhook

   Update the settings for an existing webhook.
   */
  struct PatchListsIdWebhooksId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/webhooks/{webhook_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "webhook_id" + "}", with: "\(webhookId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The webhook's id. */
    public let webhookId: String

    public init(body: AddWebhook, listId: String, webhookId: String) {
      self.body = body
      self.listId = listId
      self.webhookId = webhookId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ListWebhooks
    public typealias BodyType = AddWebhook

    public let body: AddWebhook
  }
}
