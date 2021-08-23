import Foundation

public extension Mailchimp.LandingPages {
  /**
   List landing pages

   Get all landing pages.
   */
  enum GetAllLandingPages {
    public static let service = APIService<Response>(id: "getAllLandingPages", tag: "landingPages", method: "GET", path: "/landing-pages", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

    /** Returns files sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case createdAt = "created_at"
      case updatedAt = "updated_at"
    }

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** Determines the order direction for sorted results. */
        public var sortDir: SortDir?

        /** Returns files sorted by the specified field. */
        public var sortField: SortField?

        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The number of records to return. Default value is 10. Maximum value is 1000 */
        public var count: Int?

        public init(sortDir: SortDir? = nil, sortField: SortField? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil) {
          self.sortDir = sortDir
          self.sortField = sortField
          self.fields = fields
          self.excludeFields = excludeFields
          self.count = count
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetAllLandingPages.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(sortDir: SortDir? = nil, sortField: SortField? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil) {
        let options = Options(sortDir: sortDir, sortField: sortField, fields: fields, excludeFields: excludeFields, count: count)
        self.init(options: options)
      }

      override public var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let sortDir = options.sortDir?.encode() {
          params["sort_dir"] = sortDir
        }
        if let sortField = options.sortField?.encode() {
          params["sort_field"] = sortField
        }
        if let fields = options.fields?.joined(separator: ",") {
          params["fields"] = fields
        }
        if let excludeFields = options.excludeFields?.joined(separator: ",") {
          params["exclude_fields"] = excludeFields
        }
        if let count = options.count {
          params["count"] = count
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** A collection of landing pages. */
      public struct Status200: MailchimpModel {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The landing pages on the account */
        public var landingPages: [LandingPages]?

        /** The total number of items matching the query regardless of pagination. */
        public var totalItems: Int?

        /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
        public struct Links: MailchimpModel {
          /** The HTTP method that should be used when accessing the URL defined in 'href'. */
          public enum Method: String, Codable, Equatable, CaseIterable {
            case get = "GET"
            case post = "POST"
            case put = "PUT"
            case patch = "PATCH"
            case delete = "DELETE"
            case options = "OPTIONS"
            case head = "HEAD"
          }

          /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
          public var href: String?

          /** The HTTP method that should be used when accessing the URL defined in 'href'. */
          public var method: Method?

          /** As with an HTML 'rel' attribute, this describes the type of link. */
          public var rel: String?

          /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
          public var schema: String?

          /** For GETs, this is a URL representing the schema that the response should conform to. */
          public var targetSchema: String?

          public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil) {
            self.href = href
            self.method = method
            self.rel = rel
            self.schema = schema
            self.targetSchema = targetSchema
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            href = try container.decodeIfPresent("href")
            method = try container.decodeIfPresent("method")
            rel = try container.decodeIfPresent("rel")
            schema = try container.decodeIfPresent("schema")
            targetSchema = try container.decodeIfPresent("targetSchema")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(href, forKey: "href")
            try container.encodeIfPresent(method, forKey: "method")
            try container.encodeIfPresent(rel, forKey: "rel")
            try container.encodeIfPresent(schema, forKey: "schema")
            try container.encodeIfPresent(targetSchema, forKey: "targetSchema")
          }
        }

        /** A summary of an individual landing page's settings and content. */
        public struct LandingPages: MailchimpModel {
          /** The status of this landing page. */
          public enum Status: String, Codable, Equatable, CaseIterable {
            case published
            case unpublished
            case draft
          }

          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The time this landing page was created. */
          public var createdAt: DateTime?

          /** Created by mobile or web */
          public var createdBySource: String?

          /** The description of this landing page. */
          public var description: String?

          /** A string that uniquely identifies this landing page. */
          public var id: String?

          /** The list's ID associated with this landing page. */
          public var listId: String?

          /** The name of this landing page. */
          public var name: String?

          /** The time this landing page was published. */
          public var publishedAt: DateTime?

          /** The status of this landing page. */
          public var status: Status?

          /** The ID of the store associated with this landing page. */
          public var storeId: String?

          /** The template_id of this landing page. */
          public var templateId: Int?

          /** The title of this landing page seen in the browser's title bar. */
          public var title: String?

          /** The tracking settings applied to this landing page. */
          public var tracking: Tracking?

          /** The time this landing page was unpublished. */
          public var unpublishedAt: DateTime?

          /** The time this landing page was updated at. */
          public var updatedAt: DateTime?

          /** The url of the published landing page. */
          public var url: String?

          /** The ID used in the Mailchimp web application. */
          public var webId: Int?

          /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
          public struct Links: MailchimpModel {
            /** The HTTP method that should be used when accessing the URL defined in 'href'. */
            public enum Method: String, Codable, Equatable, CaseIterable {
              case get = "GET"
              case post = "POST"
              case put = "PUT"
              case patch = "PATCH"
              case delete = "DELETE"
              case options = "OPTIONS"
              case head = "HEAD"
            }

            /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
            public var href: String?

            /** The HTTP method that should be used when accessing the URL defined in 'href'. */
            public var method: Method?

            /** As with an HTML 'rel' attribute, this describes the type of link. */
            public var rel: String?

            /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
            public var schema: String?

            /** For GETs, this is a URL representing the schema that the response should conform to. */
            public var targetSchema: String?

            public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil) {
              self.href = href
              self.method = method
              self.rel = rel
              self.schema = schema
              self.targetSchema = targetSchema
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              href = try container.decodeIfPresent("href")
              method = try container.decodeIfPresent("method")
              rel = try container.decodeIfPresent("rel")
              schema = try container.decodeIfPresent("schema")
              targetSchema = try container.decodeIfPresent("targetSchema")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(href, forKey: "href")
              try container.encodeIfPresent(method, forKey: "method")
              try container.encodeIfPresent(rel, forKey: "rel")
              try container.encodeIfPresent(schema, forKey: "schema")
              try container.encodeIfPresent(targetSchema, forKey: "targetSchema")
            }
          }

          /** The tracking settings applied to this landing page. */
          public struct Tracking: MailchimpModel {
            /** Google offers restricted data processing in connection with the California Consumer Privacy Act (CCPA) to restrict how Google uses certain identifiers and other data processed in the provision of its services. You can learn more about Google's restricted data processing within Google Ads [here](https://privacy.google.com/businesses/rdp/). */
            public var enableRestrictedDataProcessing: Bool?

            /** Use cookies to track unique visitors and calculate overall conversion rate. Learn more [here](https://mailchimp.com/help/use-track-mailchimp/). */
            public var trackWithMailchimp: Bool?

            public init(enableRestrictedDataProcessing: Bool? = nil, trackWithMailchimp: Bool? = nil) {
              self.enableRestrictedDataProcessing = enableRestrictedDataProcessing
              self.trackWithMailchimp = trackWithMailchimp
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              enableRestrictedDataProcessing = try container.decodeIfPresent("enable_restricted_data_processing")
              trackWithMailchimp = try container.decodeIfPresent("track_with_mailchimp")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(enableRestrictedDataProcessing, forKey: "enable_restricted_data_processing")
              try container.encodeIfPresent(trackWithMailchimp, forKey: "track_with_mailchimp")
            }
          }

          public init(links: [Links]? = nil, createdAt: DateTime? = nil, createdBySource: String? = nil, description: String? = nil, id: String? = nil, listId: String? = nil, name: String? = nil, publishedAt: DateTime? = nil, status: Status? = nil, storeId: String? = nil, templateId: Int? = nil, title: String? = nil, tracking: Tracking? = nil, unpublishedAt: DateTime? = nil, updatedAt: DateTime? = nil, url: String? = nil, webId: Int? = nil) {
            self.links = links
            self.createdAt = createdAt
            self.createdBySource = createdBySource
            self.description = description
            self.id = id
            self.listId = listId
            self.name = name
            self.publishedAt = publishedAt
            self.status = status
            self.storeId = storeId
            self.templateId = templateId
            self.title = title
            self.tracking = tracking
            self.unpublishedAt = unpublishedAt
            self.updatedAt = updatedAt
            self.url = url
            self.webId = webId
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            createdAt = try container.decodeIfPresent("created_at")
            createdBySource = try container.decodeIfPresent("created_by_source")
            description = try container.decodeIfPresent("description")
            id = try container.decodeIfPresent("id")
            listId = try container.decodeIfPresent("list_id")
            name = try container.decodeIfPresent("name")
            publishedAt = try container.decodeIfPresent("published_at")
            status = try container.decodeIfPresent("status")
            storeId = try container.decodeIfPresent("store_id")
            templateId = try container.decodeIfPresent("template_id")
            title = try container.decodeIfPresent("title")
            tracking = try container.decodeIfPresent("tracking")
            unpublishedAt = try container.decodeIfPresent("unpublished_at")
            updatedAt = try container.decodeIfPresent("updated_at")
            url = try container.decodeIfPresent("url")
            webId = try container.decodeIfPresent("web_id")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(createdAt, forKey: "created_at")
            try container.encodeIfPresent(createdBySource, forKey: "created_by_source")
            try container.encodeIfPresent(description, forKey: "description")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(name, forKey: "name")
            try container.encodeIfPresent(publishedAt, forKey: "published_at")
            try container.encodeIfPresent(status, forKey: "status")
            try container.encodeIfPresent(storeId, forKey: "store_id")
            try container.encodeIfPresent(templateId, forKey: "template_id")
            try container.encodeIfPresent(title, forKey: "title")
            try container.encodeIfPresent(tracking, forKey: "tracking")
            try container.encodeIfPresent(unpublishedAt, forKey: "unpublished_at")
            try container.encodeIfPresent(updatedAt, forKey: "updated_at")
            try container.encodeIfPresent(url, forKey: "url")
            try container.encodeIfPresent(webId, forKey: "web_id")
          }
        }

        public init(links: [Links]? = nil, landingPages: [LandingPages]? = nil, totalItems: Int? = nil) {
          self.links = links
          self.landingPages = landingPages
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          landingPages = try container.decodeArrayIfPresent("landing_pages")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(landingPages, forKey: "landing_pages")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
        }
      }

      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */
      public struct DefaultResponse: MailchimpModel {
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

      public typealias SuccessType = Status200

      /** Landing Pages Collection */
      case status200(Status200)

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

      public var success: Status200? {
        switch self {
        case let .status200(response): return response
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
      public var responseResult: APIResponseResult<Status200, DefaultResponse> {
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
        case let .status200(response): return response
        case let .defaultResponse(_, response): return response
        }
      }

      public var statusCode: Int {
        switch self {
        case .status200: return 200
        case let .defaultResponse(statusCode, _): return statusCode
        }
      }

      public var successful: Bool {
        switch self {
        case .status200: return true
        case .defaultResponse: return false
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = try .status200(decoder.decode(Status200.self, from: data))
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
