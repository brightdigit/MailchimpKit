import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add store

   Add a new store to your Mailchimp account.
   */
  struct PostEcommerceStores: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: ECommerceStore1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceStore
    public typealias BodyType = ECommerceStore1

    public let body: ECommerceStore1
  }
}
