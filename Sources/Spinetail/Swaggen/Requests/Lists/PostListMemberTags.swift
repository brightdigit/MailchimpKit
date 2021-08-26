import Foundation
import Prch

public extension Lists {
  /**
   Add or remove member tags

   Add or remove tags from a list member. If a tag that does not exist is passed in and set as 'active', a new tag will be created.
   */
  enum PostListMemberTags {
    public static let service = APIService<Response>(id: "postListMemberTags", tag: "lists", method: "POST", path: "/lists/{list_id}/members/{subscriber_hash}/tags", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** A list of tags assigned to a list member. */
      public struct Body: Model {
        /** A list of tags assigned to the list member. */
        public var tags: [Tags]

        /** When is_syncing is true, automations based on the tags in the request will not fire */
        public var isSyncing: Bool?

        /** Add or remove tags on a member by declaring a tag either active or inactive on a member. */
        public struct Tags: Model {
          /** The status for the tag on the member, pass in active to add a tag or inactive to remove it. */
          public enum Status: String, Codable, Equatable, CaseIterable {
            case inactive
            case active
          }

          /** The name of the tag. */
          public var name: String

          /** The status for the tag on the member, pass in active to add a tag or inactive to remove it. */
          public var status: Status

          public init(name: String, status: Status) {
            self.name = name
            self.status = status
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            name = try container.decode("name")
            status = try container.decode("status")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(name, forKey: "name")
            try container.encode(status, forKey: "status")
          }
        }

        public init(tags: [Tags], isSyncing: Bool? = nil) {
          self.tags = tags
          self.isSyncing = isSyncing
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          tags = try container.decodeArray("tags")
          isSyncing = try container.decodeIfPresent("is_syncing")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(tags, forKey: "tags")
          try container.encodeIfPresent(isSyncing, forKey: "is_syncing")
        }
      }

      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** The MD5 hash of the lowercase version of the list member's email address. */
        public var subscriberHash: String

        public init(listId: String, subscriberHash: String) {
          self.listId = listId
          self.subscriberHash = subscriberHash
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PostListMemberTags.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(listId: String, subscriberHash: String, body: Body) {
        let options = Options(listId: listId, subscriberHash: subscriberHash)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(options.subscriberHash)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */
      public struct DefaultResponse: Model {
        /** A human-readable explanation specific to this occurrence of the problem. [Learn more about errors](/developer/guides/get-started-with-mailchimp-api-3/#Errors). */
        public var detail: String

        /** A string that identifies this specific occurrence of the problem. Please provide this ID when contacting support. */
        public var instance: String

        /** The HTTP status code (RFC2616, Section 6) generated by the origin server for this occurrence of the problem. */
        public var status: Int

        /** A short, human-readable summary of the problem type. It shouldn't change based on the occurrence of the problem, except for purposes of localization. */
        public var title: String

        /** An absolute URI that identifies the problem type. When dereferenced, it should provide human-readable documentation for the problem type. */
        public var type: String

        public init(detail: String, instance: String, status: Int, title: String, type: String) {
          self.detail = detail
          self.instance = instance
          self.status = status
          self.title = title
          self.type = type
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          detail = try container.decode("detail")
          instance = try container.decode("instance")
          status = try container.decode("status")
          title = try container.decode("title")
          type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(detail, forKey: "detail")
          try container.encode(instance, forKey: "instance")
          try container.encode(status, forKey: "status")
          try container.encode(title, forKey: "title")
          try container.encode(type, forKey: "type")
        }
      }

      public typealias SuccessType = Void

      /** Empty Response */
      case status204

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

      public var success: Void? {
        switch self {
        case .status204: return ()
        default: return nil
        }
      }

      public var failure: DefaultResponse? {
        switch self {
        case let .defaultResponse(_, response): return response
        default: return nil
        }
      }

      /// either success or failure value. Success is anything in the 200..<300 status code range
      public var responseResult: APIResponseResult<Void, DefaultResponse> {
        if let successValue = success {
          return .success(successValue)
        } else if let failureValue = failure {
          return .failure(failureValue)
        } else {
          fatalError("Response does not have success or failure response")
        }
      }

      public var response: Any {
        switch self {
        case let .defaultResponse(_, response): return response
        default: return ()
        }
      }

      public var statusCode: Int {
        switch self {
        case .status204: return 204
        case let .defaultResponse(statusCode, _): return statusCode
        }
      }

      public var successful: Bool {
        switch self {
        case .status204: return true
        case .defaultResponse: return false
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 204: self = .status204
        default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
        }
      }

      public var description: String {
        "\(statusCode) \(successful ? "success" : "failure")"
      }

      public var debugDescription: String {
        var string = description
        let responseString = "\(response)"
        if responseString != "()" {
          string += "\n\(responseString)"
        }
        return string
      }
    }
  }
}
