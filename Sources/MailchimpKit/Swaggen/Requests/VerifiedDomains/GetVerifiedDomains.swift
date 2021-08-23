import Foundation

public extension Mailchimp.VerifiedDomains {
  /**
   List sending domains

   Get all of the sending domains on the account.
   */
  enum GetVerifiedDomains {
    public static let service = APIService<Response>(id: "getVerifiedDomains", tag: "verifiedDomains", method: "GET", path: "/verified-domains", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public init() {
        super.init(service: GetVerifiedDomains.service)
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** The verified domains currently on the account. */
      public struct Status200: MailchimpModel {
        /** The domains on the account */
        public var domains: [Domains]?

        /** The total number of items matching the query regardless of pagination. */
        public var totalItems: Int?

        /** The verified domains currently on the account. */
        public struct Domains: MailchimpModel {
          /** Whether domain authentication is enabled for this domain. */
          public var authenticated: Bool?

          /** The name of this domain. */
          public var domain: String?

          /** The e-mail address receiving the two-factor challenge for this domain. */
          public var verificationEmail: String?

          /** The date/time that the two-factor challenge was sent to the verification email. */
          public var verificationSent: DateTime?

          /** Whether the domain has been verified for sending. */
          public var verified: Bool?

          public init(authenticated: Bool? = nil, domain: String? = nil, verificationEmail: String? = nil, verificationSent: DateTime? = nil, verified: Bool? = nil) {
            self.authenticated = authenticated
            self.domain = domain
            self.verificationEmail = verificationEmail
            self.verificationSent = verificationSent
            self.verified = verified
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            authenticated = try container.decodeIfPresent("authenticated")
            domain = try container.decodeIfPresent("domain")
            verificationEmail = try container.decodeIfPresent("verification_email")
            verificationSent = try container.decodeIfPresent("verification_sent")
            verified = try container.decodeIfPresent("verified")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(authenticated, forKey: "authenticated")
            try container.encodeIfPresent(domain, forKey: "domain")
            try container.encodeIfPresent(verificationEmail, forKey: "verification_email")
            try container.encodeIfPresent(verificationSent, forKey: "verification_sent")
            try container.encodeIfPresent(verified, forKey: "verified")
          }
        }

        public init(domains: [Domains]? = nil, totalItems: Int? = nil) {
          self.domains = domains
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          domains = try container.decodeArrayIfPresent("domains")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(domains, forKey: "domains")
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

      /** The domains on the account. */
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
