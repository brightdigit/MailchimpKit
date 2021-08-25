import Foundation

public extension Ecommerce {
  /**
   Add cart line item

   Add a new line item to an existing cart.
   */
  enum PostEcommerceStoresIdCartsIdLines {
    public static let service = APIService<Response>(id: "postEcommerceStoresIdCartsIdLines", tag: "ecommerce", method: "POST", path: "/ecommerce/stores/{store_id}/carts/{cart_id}/lines", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** Information about a specific cart line item. */
      public struct Body: MailchimpModel {
        /** A unique identifier for the cart line item. */
        public var id: String

        /** The price of a cart line item. */
        public var price: Double

        /** A unique identifier for the product associated with the cart line item. */
        public var productId: String

        /** A unique identifier for the product variant associated with the cart line item. */
        public var productVariantId: String

        /** The quantity of a cart line item. */
        public var quantity: Int

        public init(id: String, price: Double, productId: String, productVariantId: String, quantity: Int) {
          self.id = id
          self.price = price
          self.productId = productId
          self.productVariantId = productVariantId
          self.quantity = quantity
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          id = try container.decode("id")
          price = try container.decode("price")
          productId = try container.decode("product_id")
          productVariantId = try container.decode("product_variant_id")
          quantity = try container.decode("quantity")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(id, forKey: "id")
          try container.encode(price, forKey: "price")
          try container.encode(productId, forKey: "product_id")
          try container.encode(productVariantId, forKey: "product_variant_id")
          try container.encode(quantity, forKey: "quantity")
        }
      }

      public struct Options {
        /** The store id. */
        public var storeId: String

        /** The id for the cart. */
        public var cartId: String

        public init(storeId: String, cartId: String) {
          self.storeId = storeId
          self.cartId = cartId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PostEcommerceStoresIdCartsIdLines.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(storeId: String, cartId: String, body: Body) {
        let options = Options(storeId: storeId, cartId: cartId)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(options.storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(options.cartId)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Information about a specific cart line item. */
      public struct Status200: MailchimpModel {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** A unique identifier for the cart line item. */
        public var id: String?

        /** The price of a cart line item. */
        public var price: Double?

        /** A unique identifier for the product associated with the cart line item. */
        public var productId: String?

        /** The name of the product for the cart line item. */
        public var productTitle: String?

        /** A unique identifier for the product variant associated with the cart line item. */
        public var productVariantId: String?

        /** The name of the product variant for the cart line item. */
        public var productVariantTitle: String?

        /** The quantity of a cart line item. */
        public var quantity: Int?

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

        public init(links: [Links]? = nil, id: String? = nil, price: Double? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil) {
          self.links = links
          self.id = id
          self.price = price
          self.productId = productId
          self.productTitle = productTitle
          self.productVariantId = productVariantId
          self.productVariantTitle = productVariantTitle
          self.quantity = quantity
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          id = try container.decodeIfPresent("id")
          price = try container.decodeIfPresent("price")
          productId = try container.decodeIfPresent("product_id")
          productTitle = try container.decodeIfPresent("product_title")
          productVariantId = try container.decodeIfPresent("product_variant_id")
          productVariantTitle = try container.decodeIfPresent("product_variant_title")
          quantity = try container.decodeIfPresent("quantity")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(price, forKey: "price")
          try container.encodeIfPresent(productId, forKey: "product_id")
          try container.encodeIfPresent(productTitle, forKey: "product_title")
          try container.encodeIfPresent(productVariantId, forKey: "product_variant_id")
          try container.encodeIfPresent(productVariantTitle, forKey: "product_variant_title")
          try container.encodeIfPresent(quantity, forKey: "quantity")
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