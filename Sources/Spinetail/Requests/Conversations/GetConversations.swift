import Foundation
import PrchModel

public extension Conversations {
  /**
   List conversations

   Get a list of conversations for the account. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
   */
  struct GetConversations: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/conversations"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public let count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public let offset: Int?

    /** Whether the conversation has any unread messages. */
    public let hasUnreadMessages: HasUnreadMessages?

    /** The unique id for the list. */
    public let listId: String?

    /** The unique id for the campaign. */
    public let campaignId: String?

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, hasUnreadMessages: HasUnreadMessages? = nil, listId: String? = nil, campaignId: String? = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.count = count
      self.offset = offset
      self.hasUnreadMessages = hasUnreadMessages
      self.listId = listId
      self.campaignId = campaignId
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let count = self.count {
        params["count"] = String(describing: count)
      }
      if let offset = self.offset {
        params["offset"] = String(describing: offset)
      }
      if let hasUnreadMessages = self.hasUnreadMessages {
        params["has_unread_messages"] = String(describing: hasUnreadMessages)
      }
      if let listId = self.listId {
        params["list_id"] = String(describing: listId)
      }
      if let campaignId = self.campaignId {
        params["campaign_id"] = String(describing: campaignId)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** Whether the conversation has any unread messages. */
    public enum HasUnreadMessages: String, Codable, Equatable, CaseIterable {
      case `true`
      case `false`
    }

    public typealias SuccessType = TrackedConversations
    public typealias BodyType = Empty
  }
}
