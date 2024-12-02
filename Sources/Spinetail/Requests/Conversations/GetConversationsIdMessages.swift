import Foundation
import PrchModel

public extension Conversations {
  /**
   List messages

   Get messages from a specific conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
   */
  struct GetConversationsIdMessages: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/conversations/{conversation_id}/messages"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "conversation_id" + "}", with: "\(conversationId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique id for the conversation. */
    public let conversationId: String

    /** Whether a conversation message has been marked as read. */
    public let isRead: IsRead?

    /** Restrict the response to messages created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let beforeTimestamp: MailchimpOptionalDate

    /** Restrict the response to messages created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public let sinceTimestamp: MailchimpOptionalDate

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, conversationId: String, isRead: IsRead? = nil, beforeTimestamp: MailchimpOptionalDate = nil, sinceTimestamp: MailchimpOptionalDate = nil) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.conversationId = conversationId
      self.isRead = isRead
      self.beforeTimestamp = beforeTimestamp
      self.sinceTimestamp = sinceTimestamp
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let isRead = self.isRead {
        params["is_read"] = String(describing: isRead)
      }
      if let beforeTimestamp = self.beforeTimestamp.value {
        params["before_timestamp"] = String(describing: beforeTimestamp)
      }
      if let sinceTimestamp = self.sinceTimestamp.value {
        params["since_timestamp"] = String(describing: sinceTimestamp)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** Whether a conversation message has been marked as read. */
    public enum IsRead: String, Codable, Equatable, CaseIterable {
      case `true`
      case `false`
    }

    public typealias SuccessType = CollectionOfConversationMessages
    public typealias BodyType = Empty
  }
}
