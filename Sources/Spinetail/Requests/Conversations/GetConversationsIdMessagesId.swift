import Foundation
import PrchModel

public extension Conversations {
  /**
   Get message

   Get an individual message in a conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
   */
  struct GetConversationsIdMessagesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/conversations/{conversation_id}/messages/{message_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "conversation_id" + "}", with: "\(conversationId)").replacingOccurrences(of: "{" + "message_id" + "}", with: "\(messageId)")
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

    /** The unique id for the conversation message. */
    public let messageId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, conversationId: String, messageId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.conversationId = conversationId
      self.messageId = messageId
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ConversationMessage
    public typealias BodyType = Empty
  }
}
