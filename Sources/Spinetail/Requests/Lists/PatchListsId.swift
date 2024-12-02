import Foundation
import PrchModel

public extension Lists {
  /**
   Update lists

   Update the settings for a specific list.
   */
  struct PatchListsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public let listId: String

    public init(body: SubscriberList2, listId: String) {
      self.body = body
      self.listId = listId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = SubscriberList
    public typealias BodyType = SubscriberList2

    public let body: SubscriberList2
  }
}
