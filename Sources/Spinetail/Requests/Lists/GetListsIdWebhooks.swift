import Foundation
import PrchModel

public extension Lists {
  /**
   List webhooks

   Get information about all webhooks for a specific list.
   */
  struct GetListsIdWebhooks: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/webhooks"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public let listId: String

    public init(listId: String) {
      self.listId = listId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ListWebhooks
    public typealias BodyType = Empty
  }
}
